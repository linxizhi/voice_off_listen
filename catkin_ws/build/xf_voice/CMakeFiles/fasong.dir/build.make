# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/linxi/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/linxi/catkin_ws/build

# Include any dependencies generated for this target.
include xf_voice/CMakeFiles/fasong.dir/depend.make

# Include the progress variables for this target.
include xf_voice/CMakeFiles/fasong.dir/progress.make

# Include the compile flags for this target's objects.
include xf_voice/CMakeFiles/fasong.dir/flags.make

xf_voice/CMakeFiles/fasong.dir/src/fasong.cpp.o: xf_voice/CMakeFiles/fasong.dir/flags.make
xf_voice/CMakeFiles/fasong.dir/src/fasong.cpp.o: /home/linxi/catkin_ws/src/xf_voice/src/fasong.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/linxi/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object xf_voice/CMakeFiles/fasong.dir/src/fasong.cpp.o"
	cd /home/linxi/catkin_ws/build/xf_voice && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/fasong.dir/src/fasong.cpp.o -c /home/linxi/catkin_ws/src/xf_voice/src/fasong.cpp

xf_voice/CMakeFiles/fasong.dir/src/fasong.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fasong.dir/src/fasong.cpp.i"
	cd /home/linxi/catkin_ws/build/xf_voice && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/linxi/catkin_ws/src/xf_voice/src/fasong.cpp > CMakeFiles/fasong.dir/src/fasong.cpp.i

xf_voice/CMakeFiles/fasong.dir/src/fasong.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fasong.dir/src/fasong.cpp.s"
	cd /home/linxi/catkin_ws/build/xf_voice && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/linxi/catkin_ws/src/xf_voice/src/fasong.cpp -o CMakeFiles/fasong.dir/src/fasong.cpp.s

# Object files for target fasong
fasong_OBJECTS = \
"CMakeFiles/fasong.dir/src/fasong.cpp.o"

# External object files for target fasong
fasong_EXTERNAL_OBJECTS =

/home/linxi/catkin_ws/devel/lib/xf_voice/fasong: xf_voice/CMakeFiles/fasong.dir/src/fasong.cpp.o
/home/linxi/catkin_ws/devel/lib/xf_voice/fasong: xf_voice/CMakeFiles/fasong.dir/build.make
/home/linxi/catkin_ws/devel/lib/xf_voice/fasong: /opt/ros/noetic/lib/libroscpp.so
/home/linxi/catkin_ws/devel/lib/xf_voice/fasong: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/linxi/catkin_ws/devel/lib/xf_voice/fasong: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
/home/linxi/catkin_ws/devel/lib/xf_voice/fasong: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
/home/linxi/catkin_ws/devel/lib/xf_voice/fasong: /opt/ros/noetic/lib/librosconsole.so
/home/linxi/catkin_ws/devel/lib/xf_voice/fasong: /opt/ros/noetic/lib/librosconsole_log4cxx.so
/home/linxi/catkin_ws/devel/lib/xf_voice/fasong: /opt/ros/noetic/lib/librosconsole_backend_interface.so
/home/linxi/catkin_ws/devel/lib/xf_voice/fasong: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/linxi/catkin_ws/devel/lib/xf_voice/fasong: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
/home/linxi/catkin_ws/devel/lib/xf_voice/fasong: /opt/ros/noetic/lib/libxmlrpcpp.so
/home/linxi/catkin_ws/devel/lib/xf_voice/fasong: /opt/ros/noetic/lib/libroscpp_serialization.so
/home/linxi/catkin_ws/devel/lib/xf_voice/fasong: /opt/ros/noetic/lib/librostime.so
/home/linxi/catkin_ws/devel/lib/xf_voice/fasong: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
/home/linxi/catkin_ws/devel/lib/xf_voice/fasong: /opt/ros/noetic/lib/libcpp_common.so
/home/linxi/catkin_ws/devel/lib/xf_voice/fasong: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
/home/linxi/catkin_ws/devel/lib/xf_voice/fasong: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
/home/linxi/catkin_ws/devel/lib/xf_voice/fasong: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/linxi/catkin_ws/devel/lib/xf_voice/fasong: xf_voice/CMakeFiles/fasong.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/linxi/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/linxi/catkin_ws/devel/lib/xf_voice/fasong"
	cd /home/linxi/catkin_ws/build/xf_voice && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fasong.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
xf_voice/CMakeFiles/fasong.dir/build: /home/linxi/catkin_ws/devel/lib/xf_voice/fasong

.PHONY : xf_voice/CMakeFiles/fasong.dir/build

xf_voice/CMakeFiles/fasong.dir/clean:
	cd /home/linxi/catkin_ws/build/xf_voice && $(CMAKE_COMMAND) -P CMakeFiles/fasong.dir/cmake_clean.cmake
.PHONY : xf_voice/CMakeFiles/fasong.dir/clean

xf_voice/CMakeFiles/fasong.dir/depend:
	cd /home/linxi/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/linxi/catkin_ws/src /home/linxi/catkin_ws/src/xf_voice /home/linxi/catkin_ws/build /home/linxi/catkin_ws/build/xf_voice /home/linxi/catkin_ws/build/xf_voice/CMakeFiles/fasong.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : xf_voice/CMakeFiles/fasong.dir/depend

