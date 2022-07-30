Blog:https://blog.csdn.net/u013834525/article/details/80097253

Tihs package use alsa to record voice and wait for awake, and then recognize order.
My code is refer to iflytek's asr_record_sample and awaken_sample. For more infomation, please check through iflytek's reference.

I do not know why, but the iflytek does not accept relative path, so you need to change your package's absolute path in asr_record.h like this:
#define PACKAGE_PATH "/home/your_name/catkin_ws/src/awaken_asr/"

And you need to change your appid which obtained from http://www.xfyun.cn/ in awaken_asr_ros.cpp. 
Replace the resource files in res folder & libs folder

To use it, just cd to your work space and source ./64bit_make.sh or 32bit_make.sh depending on your system. It will build automatically. After building the code, you just need to run ./bin/awaken_asr
It will awaken by saying the word in wordlist.txt and the run order recognition according to the rules specific in call.bnf for 15s. When finish, it will change variate g_order and g_is_order_publiced. You can do your job in main.c

运行环境：虚拟机ubuntu18.04
以上是另一个博主的readme内容，需要注意的是除了修改appid、路径之外，还需要去替换对应于你自己appid的资源，包括：
1.你下载的sdk中的libs文件夹替换掉本功能包中libs
2.根据系统位数选择libs中的对应的库文件如libmsc.lib、libw_ivw.lib拷贝到/usr/lib/路径下：进入sdk库文件夹libs/x64/或者libs/x86/下
	sudo cp  libmsc.lib /usr/lib/libmsc.lib、
	sudo cp  libw_ivw.lib /usr/lib/libw_ivw.lib
3.备份保留我的工程中res文件夹
4.用自己的SDK当中res文件夹替换我功能包中res文件夹。特别注意，我下载的组合SDK中res文件夹位于bin/msc/res/处，内有多个.jet文件，将sdk当中此res文件夹复制替换掉我的包中的res文件夹。
5.将我原本的res/asr/call.bnf文件文件复制到你当前的更改过后的res/asr/路径下。
6.ros编译执行。
7.此包中进行消息处理发布ros话题等代码自己根据需求添加即可。
