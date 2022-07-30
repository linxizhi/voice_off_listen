#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <errno.h>
#include <unistd.h>
#include "../include/msc/msp_cmn.h"
#include "../include/msc/msp_errors.h"
#include "../include/asr_record/asr_record.h"
#include "../include/awaken/awaken.h"
#include "../include/asr_record/play_audio.h"

#include <ros/ros.h>
#include <std_msgs/String.h>
#include <sstream>


#define lgi_param_a "ivw_threshold=0:1450,sst=wakeup,ivw_res_path =fo|"
#define lgi_param_b concat(lgi_param_a, PACKAGE_PATH)
//const char *lgi_param = concat(lgi_param_b, "res/ivw/wakeupresource.jet"); //使用唤醒需要在此设置engine_start = ivw,ivw_res_path =fo|xxx/xx 启动唤醒引擎
//const char *ssb_param = "ivw_threshold=0:1450,sst=wakeup";
const char *lgi_param = "appid = 646baf12,work_dir = .";
const char *ssb_param = concat(lgi_param_b,"res/ivw/wakeupresource.jet");


int16_t g_order = ORDER_NONE;
BOOL g_is_order_publiced = FALSE;
UserData asr_data;


#define MAX_SIZE 100


int main(int argc,char **argv)
{

    //ros::init(argc,argv,"robot_voice");       
    //ros::NodeHandle n;                           
    //ros::Publisher chatter_pub = n.advertise<std_msgs::String>("message",1000);    
    //ros::Rate loop_rate(10);//loop_rate.sleep();                  
/*
    while(ros::ok())                     //中断，遇到ctrl+c时候中断
    {
        std_msgs::String msg;            //申请内存
        std::stringstream ss;                  //信息内容变量
        ss << "I am publisher ";         //写入变量
        msg.data = ss.str();             //写入内存
        chatter_pub.publish(msg);        //调用发布函数
        loop_rate.sleep();               //发送频率
    }
*/




	//ros::spin();//这俩兄弟学名叫ROS消息回调处理函数。它俩通常会出现在ROS的主循环中，程序需要不断调用ros::spin() 或 ros::spinOnce()，
				//两者区别在于前者调用后不会再返回，也就是你的主程序到这儿就不往下执行了，而后者在调用后还可以继续执行之后的程序。


char current_absolute_path[MAX_SIZE];
  //获取当前程序绝对路径
  int cnt = readlink("/proc/self/exe", current_absolute_path, MAX_SIZE);
  getcwd(current_absolute_path, MAX_SIZE);
  printf("current absolute path:%s\n", current_absolute_path);
//init iflytek


  int ret = 0 ;

  ret = MSPLogin(NULL, NULL, lgi_param);
  if (MSP_SUCCESS != ret)
  {
    printf("MSPLogin failed, error code: %d.\n", ret);
    goto exit ;//登录失败，退出登录
  }


  memset(&asr_data, 0, sizeof(UserData));
  printf("构建离线识别语法网络...\n");
  ret = build_grammar(&asr_data);  //第一次使用某语法进行识别，需要先构建语法网络，获取语法ID，之后使用此语法进行识别，无需再次构建
  if (MSP_SUCCESS != ret) {
    printf("构建语法调用失败！\n");
    goto exit;
  }
  while (1 != asr_data.build_fini)
    usleep(300 * 1000);
  if (MSP_SUCCESS != asr_data.errcode)
    goto exit;
  printf("离线识别语法网络构建完成，开始识别...\n");


  while (1)
  {

    run_ivw(NULL, ssb_param); 
    printf("finish run_ivw\n");
    if(g_is_awaken_succeed){
      printf("begin to run asr\n");
      run_asr(&asr_data);
      g_is_awaken_succeed = FALSE;
    }
    printf("%d:%d\n", g_is_order_publiced, g_order);
    if(g_is_order_publiced == FALSE){
      if(g_order==ORDER_BACK_TO_CHARGE){
        printf("%d\n", g_order);
        play_wav((char*)concat(PACKAGE_PATH, "audios/back_to_charge.wav"));        
      }
      if(g_order == ORDER_FACE_DETECTION){
        printf("%d\n", g_order);
        play_wav((char*)concat(PACKAGE_PATH, "audios/operating_face_rec.wav"));
      }
      g_is_order_publiced = TRUE;
		}
    
  }
exit:
  MSPLogout();
  printf("请按任意键退出...\n");
  getchar();

  return 0;


}
