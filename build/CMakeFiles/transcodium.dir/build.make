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
CMAKE_SOURCE_DIR = /home/aberba/workspace/vala/Transcodium

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/aberba/workspace/vala/Transcodium/build

# Include any dependencies generated for this target.
include CMakeFiles/transcodium.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/transcodium.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/transcodium.dir/flags.make

src/Widgets/AddFileDialog.c: transcodium_valac.stamp

src/Transcodium.c: src/Widgets/AddFileDialog.c

src/main.c: src/Widgets/AddFileDialog.c

transcodium_valac.stamp: ../src/Widgets/AddFileDialog.vala
transcodium_valac.stamp: ../src/Transcodium.vala
transcodium_valac.stamp: ../src/main.vala
	$(CMAKE_COMMAND) -E cmake_progress_report /home/aberba/workspace/vala/Transcodium/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating src/Widgets/AddFileDialog.c;src/Transcodium.c;src/main.c"
	/usr/bin/valac -C -b /home/aberba/workspace/vala/Transcodium -d /home/aberba/workspace/vala/Transcodium/build --pkg=gtk+-3.0 --pkg=granite -g /home/aberba/workspace/vala/Transcodium/src/Widgets/AddFileDialog.vala /home/aberba/workspace/vala/Transcodium/src/Transcodium.vala /home/aberba/workspace/vala/Transcodium/src/main.vala
	touch /home/aberba/workspace/vala/Transcodium/build/transcodium_valac.stamp

CMakeFiles/transcodium.dir/src/Widgets/AddFileDialog.c.o: CMakeFiles/transcodium.dir/flags.make
CMakeFiles/transcodium.dir/src/Widgets/AddFileDialog.c.o: src/Widgets/AddFileDialog.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/aberba/workspace/vala/Transcodium/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/transcodium.dir/src/Widgets/AddFileDialog.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/transcodium.dir/src/Widgets/AddFileDialog.c.o   -c /home/aberba/workspace/vala/Transcodium/build/src/Widgets/AddFileDialog.c

CMakeFiles/transcodium.dir/src/Widgets/AddFileDialog.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/transcodium.dir/src/Widgets/AddFileDialog.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/aberba/workspace/vala/Transcodium/build/src/Widgets/AddFileDialog.c > CMakeFiles/transcodium.dir/src/Widgets/AddFileDialog.c.i

CMakeFiles/transcodium.dir/src/Widgets/AddFileDialog.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/transcodium.dir/src/Widgets/AddFileDialog.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/aberba/workspace/vala/Transcodium/build/src/Widgets/AddFileDialog.c -o CMakeFiles/transcodium.dir/src/Widgets/AddFileDialog.c.s

CMakeFiles/transcodium.dir/src/Widgets/AddFileDialog.c.o.requires:
.PHONY : CMakeFiles/transcodium.dir/src/Widgets/AddFileDialog.c.o.requires

CMakeFiles/transcodium.dir/src/Widgets/AddFileDialog.c.o.provides: CMakeFiles/transcodium.dir/src/Widgets/AddFileDialog.c.o.requires
	$(MAKE) -f CMakeFiles/transcodium.dir/build.make CMakeFiles/transcodium.dir/src/Widgets/AddFileDialog.c.o.provides.build
.PHONY : CMakeFiles/transcodium.dir/src/Widgets/AddFileDialog.c.o.provides

CMakeFiles/transcodium.dir/src/Widgets/AddFileDialog.c.o.provides.build: CMakeFiles/transcodium.dir/src/Widgets/AddFileDialog.c.o

CMakeFiles/transcodium.dir/src/Transcodium.c.o: CMakeFiles/transcodium.dir/flags.make
CMakeFiles/transcodium.dir/src/Transcodium.c.o: src/Transcodium.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/aberba/workspace/vala/Transcodium/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/transcodium.dir/src/Transcodium.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/transcodium.dir/src/Transcodium.c.o   -c /home/aberba/workspace/vala/Transcodium/build/src/Transcodium.c

CMakeFiles/transcodium.dir/src/Transcodium.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/transcodium.dir/src/Transcodium.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/aberba/workspace/vala/Transcodium/build/src/Transcodium.c > CMakeFiles/transcodium.dir/src/Transcodium.c.i

CMakeFiles/transcodium.dir/src/Transcodium.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/transcodium.dir/src/Transcodium.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/aberba/workspace/vala/Transcodium/build/src/Transcodium.c -o CMakeFiles/transcodium.dir/src/Transcodium.c.s

CMakeFiles/transcodium.dir/src/Transcodium.c.o.requires:
.PHONY : CMakeFiles/transcodium.dir/src/Transcodium.c.o.requires

CMakeFiles/transcodium.dir/src/Transcodium.c.o.provides: CMakeFiles/transcodium.dir/src/Transcodium.c.o.requires
	$(MAKE) -f CMakeFiles/transcodium.dir/build.make CMakeFiles/transcodium.dir/src/Transcodium.c.o.provides.build
.PHONY : CMakeFiles/transcodium.dir/src/Transcodium.c.o.provides

CMakeFiles/transcodium.dir/src/Transcodium.c.o.provides.build: CMakeFiles/transcodium.dir/src/Transcodium.c.o

CMakeFiles/transcodium.dir/src/main.c.o: CMakeFiles/transcodium.dir/flags.make
CMakeFiles/transcodium.dir/src/main.c.o: src/main.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/aberba/workspace/vala/Transcodium/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/transcodium.dir/src/main.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/transcodium.dir/src/main.c.o   -c /home/aberba/workspace/vala/Transcodium/build/src/main.c

CMakeFiles/transcodium.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/transcodium.dir/src/main.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/aberba/workspace/vala/Transcodium/build/src/main.c > CMakeFiles/transcodium.dir/src/main.c.i

CMakeFiles/transcodium.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/transcodium.dir/src/main.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/aberba/workspace/vala/Transcodium/build/src/main.c -o CMakeFiles/transcodium.dir/src/main.c.s

CMakeFiles/transcodium.dir/src/main.c.o.requires:
.PHONY : CMakeFiles/transcodium.dir/src/main.c.o.requires

CMakeFiles/transcodium.dir/src/main.c.o.provides: CMakeFiles/transcodium.dir/src/main.c.o.requires
	$(MAKE) -f CMakeFiles/transcodium.dir/build.make CMakeFiles/transcodium.dir/src/main.c.o.provides.build
.PHONY : CMakeFiles/transcodium.dir/src/main.c.o.provides

CMakeFiles/transcodium.dir/src/main.c.o.provides.build: CMakeFiles/transcodium.dir/src/main.c.o

# Object files for target transcodium
transcodium_OBJECTS = \
"CMakeFiles/transcodium.dir/src/Widgets/AddFileDialog.c.o" \
"CMakeFiles/transcodium.dir/src/Transcodium.c.o" \
"CMakeFiles/transcodium.dir/src/main.c.o"

# External object files for target transcodium
transcodium_EXTERNAL_OBJECTS =

transcodium: CMakeFiles/transcodium.dir/src/Widgets/AddFileDialog.c.o
transcodium: CMakeFiles/transcodium.dir/src/Transcodium.c.o
transcodium: CMakeFiles/transcodium.dir/src/main.c.o
transcodium: CMakeFiles/transcodium.dir/build.make
transcodium: CMakeFiles/transcodium.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable transcodium"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/transcodium.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/transcodium.dir/build: transcodium
.PHONY : CMakeFiles/transcodium.dir/build

CMakeFiles/transcodium.dir/requires: CMakeFiles/transcodium.dir/src/Widgets/AddFileDialog.c.o.requires
CMakeFiles/transcodium.dir/requires: CMakeFiles/transcodium.dir/src/Transcodium.c.o.requires
CMakeFiles/transcodium.dir/requires: CMakeFiles/transcodium.dir/src/main.c.o.requires
.PHONY : CMakeFiles/transcodium.dir/requires

CMakeFiles/transcodium.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/transcodium.dir/cmake_clean.cmake
.PHONY : CMakeFiles/transcodium.dir/clean

CMakeFiles/transcodium.dir/depend: src/Widgets/AddFileDialog.c
CMakeFiles/transcodium.dir/depend: src/Transcodium.c
CMakeFiles/transcodium.dir/depend: src/main.c
CMakeFiles/transcodium.dir/depend: transcodium_valac.stamp
	cd /home/aberba/workspace/vala/Transcodium/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/aberba/workspace/vala/Transcodium /home/aberba/workspace/vala/Transcodium /home/aberba/workspace/vala/Transcodium/build /home/aberba/workspace/vala/Transcodium/build /home/aberba/workspace/vala/Transcodium/build/CMakeFiles/transcodium.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/transcodium.dir/depend

