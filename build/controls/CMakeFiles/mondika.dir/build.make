# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/peter/control-test/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/peter/control-test/build

# Include any dependencies generated for this target.
include controls/CMakeFiles/mondika.dir/depend.make

# Include the progress variables for this target.
include controls/CMakeFiles/mondika.dir/progress.make

# Include the compile flags for this target's objects.
include controls/CMakeFiles/mondika.dir/flags.make

controls/CMakeFiles/mondika.dir/src/child1.cpp.o: controls/CMakeFiles/mondika.dir/flags.make
controls/CMakeFiles/mondika.dir/src/child1.cpp.o: /home/peter/control-test/src/controls/src/child1.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/peter/control-test/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object controls/CMakeFiles/mondika.dir/src/child1.cpp.o"
	cd /home/peter/control-test/build/controls && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/mondika.dir/src/child1.cpp.o -c /home/peter/control-test/src/controls/src/child1.cpp

controls/CMakeFiles/mondika.dir/src/child1.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mondika.dir/src/child1.cpp.i"
	cd /home/peter/control-test/build/controls && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/peter/control-test/src/controls/src/child1.cpp > CMakeFiles/mondika.dir/src/child1.cpp.i

controls/CMakeFiles/mondika.dir/src/child1.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mondika.dir/src/child1.cpp.s"
	cd /home/peter/control-test/build/controls && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/peter/control-test/src/controls/src/child1.cpp -o CMakeFiles/mondika.dir/src/child1.cpp.s

controls/CMakeFiles/mondika.dir/src/child1.cpp.o.requires:
.PHONY : controls/CMakeFiles/mondika.dir/src/child1.cpp.o.requires

controls/CMakeFiles/mondika.dir/src/child1.cpp.o.provides: controls/CMakeFiles/mondika.dir/src/child1.cpp.o.requires
	$(MAKE) -f controls/CMakeFiles/mondika.dir/build.make controls/CMakeFiles/mondika.dir/src/child1.cpp.o.provides.build
.PHONY : controls/CMakeFiles/mondika.dir/src/child1.cpp.o.provides

controls/CMakeFiles/mondika.dir/src/child1.cpp.o.provides.build: controls/CMakeFiles/mondika.dir/src/child1.cpp.o

# Object files for target mondika
mondika_OBJECTS = \
"CMakeFiles/mondika.dir/src/child1.cpp.o"

# External object files for target mondika
mondika_EXTERNAL_OBJECTS =

/home/peter/control-test/devel/lib/controls/mondika: controls/CMakeFiles/mondika.dir/src/child1.cpp.o
/home/peter/control-test/devel/lib/controls/mondika: controls/CMakeFiles/mondika.dir/build.make
/home/peter/control-test/devel/lib/controls/mondika: /opt/ros/indigo/lib/libroscpp.so
/home/peter/control-test/devel/lib/controls/mondika: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/peter/control-test/devel/lib/controls/mondika: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/peter/control-test/devel/lib/controls/mondika: /opt/ros/indigo/lib/librosconsole.so
/home/peter/control-test/devel/lib/controls/mondika: /opt/ros/indigo/lib/librosconsole_log4cxx.so
/home/peter/control-test/devel/lib/controls/mondika: /opt/ros/indigo/lib/librosconsole_backend_interface.so
/home/peter/control-test/devel/lib/controls/mondika: /usr/lib/liblog4cxx.so
/home/peter/control-test/devel/lib/controls/mondika: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/peter/control-test/devel/lib/controls/mondika: /opt/ros/indigo/lib/libroscpp_serialization.so
/home/peter/control-test/devel/lib/controls/mondika: /opt/ros/indigo/lib/librostime.so
/home/peter/control-test/devel/lib/controls/mondika: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/peter/control-test/devel/lib/controls/mondika: /opt/ros/indigo/lib/libxmlrpcpp.so
/home/peter/control-test/devel/lib/controls/mondika: /opt/ros/indigo/lib/libcpp_common.so
/home/peter/control-test/devel/lib/controls/mondika: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/peter/control-test/devel/lib/controls/mondika: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/peter/control-test/devel/lib/controls/mondika: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/peter/control-test/devel/lib/controls/mondika: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/peter/control-test/devel/lib/controls/mondika: controls/CMakeFiles/mondika.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable /home/peter/control-test/devel/lib/controls/mondika"
	cd /home/peter/control-test/build/controls && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mondika.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
controls/CMakeFiles/mondika.dir/build: /home/peter/control-test/devel/lib/controls/mondika
.PHONY : controls/CMakeFiles/mondika.dir/build

controls/CMakeFiles/mondika.dir/requires: controls/CMakeFiles/mondika.dir/src/child1.cpp.o.requires
.PHONY : controls/CMakeFiles/mondika.dir/requires

controls/CMakeFiles/mondika.dir/clean:
	cd /home/peter/control-test/build/controls && $(CMAKE_COMMAND) -P CMakeFiles/mondika.dir/cmake_clean.cmake
.PHONY : controls/CMakeFiles/mondika.dir/clean

controls/CMakeFiles/mondika.dir/depend:
	cd /home/peter/control-test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/peter/control-test/src /home/peter/control-test/src/controls /home/peter/control-test/build /home/peter/control-test/build/controls /home/peter/control-test/build/controls/CMakeFiles/mondika.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : controls/CMakeFiles/mondika.dir/depend

