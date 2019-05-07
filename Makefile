# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.14.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.14.2/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/zhang/Documents/Research/LandmarkApplication

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/zhang/Documents/Research/LandmarkApplication

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/local/Cellar/cmake/3.14.2/bin/cmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/usr/local/Cellar/cmake/3.14.2/bin/ccmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/zhang/Documents/Research/LandmarkApplication/CMakeFiles /Users/zhang/Documents/Research/LandmarkApplication/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/zhang/Documents/Research/LandmarkApplication/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named SplitsVideos

# Build rule for target.
SplitsVideos: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 SplitsVideos
.PHONY : SplitsVideos

# fast build rule for target.
SplitsVideos/fast:
	$(MAKE) -f CMakeFiles/SplitsVideos.dir/build.make CMakeFiles/SplitsVideos.dir/build
.PHONY : SplitsVideos/fast

#=============================================================================
# Target rules for targets named LandmarkSmoothing

# Build rule for target.
LandmarkSmoothing: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 LandmarkSmoothing
.PHONY : LandmarkSmoothing

# fast build rule for target.
LandmarkSmoothing/fast:
	$(MAKE) -f CMakeFiles/LandmarkSmoothing.dir/build.make CMakeFiles/LandmarkSmoothing.dir/build
.PHONY : LandmarkSmoothing/fast

#=============================================================================
# Target rules for targets named Landmark

# Build rule for target.
Landmark: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 Landmark
.PHONY : Landmark

# fast build rule for target.
Landmark/fast:
	$(MAKE) -f CMakeFiles/Landmark.dir/build.make CMakeFiles/Landmark.dir/build
.PHONY : Landmark/fast

Landmark.o: Landmark.cpp.o

.PHONY : Landmark.o

# target to build an object file
Landmark.cpp.o:
	$(MAKE) -f CMakeFiles/Landmark.dir/build.make CMakeFiles/Landmark.dir/Landmark.cpp.o
.PHONY : Landmark.cpp.o

Landmark.i: Landmark.cpp.i

.PHONY : Landmark.i

# target to preprocess a source file
Landmark.cpp.i:
	$(MAKE) -f CMakeFiles/Landmark.dir/build.make CMakeFiles/Landmark.dir/Landmark.cpp.i
.PHONY : Landmark.cpp.i

Landmark.s: Landmark.cpp.s

.PHONY : Landmark.s

# target to generate assembly for a file
Landmark.cpp.s:
	$(MAKE) -f CMakeFiles/Landmark.dir/build.make CMakeFiles/Landmark.dir/Landmark.cpp.s
.PHONY : Landmark.cpp.s

LandmarkSmoothing.o: LandmarkSmoothing.cpp.o

.PHONY : LandmarkSmoothing.o

# target to build an object file
LandmarkSmoothing.cpp.o:
	$(MAKE) -f CMakeFiles/LandmarkSmoothing.dir/build.make CMakeFiles/LandmarkSmoothing.dir/LandmarkSmoothing.cpp.o
.PHONY : LandmarkSmoothing.cpp.o

LandmarkSmoothing.i: LandmarkSmoothing.cpp.i

.PHONY : LandmarkSmoothing.i

# target to preprocess a source file
LandmarkSmoothing.cpp.i:
	$(MAKE) -f CMakeFiles/LandmarkSmoothing.dir/build.make CMakeFiles/LandmarkSmoothing.dir/LandmarkSmoothing.cpp.i
.PHONY : LandmarkSmoothing.cpp.i

LandmarkSmoothing.s: LandmarkSmoothing.cpp.s

.PHONY : LandmarkSmoothing.s

# target to generate assembly for a file
LandmarkSmoothing.cpp.s:
	$(MAKE) -f CMakeFiles/LandmarkSmoothing.dir/build.make CMakeFiles/LandmarkSmoothing.dir/LandmarkSmoothing.cpp.s
.PHONY : LandmarkSmoothing.cpp.s

SmoothingCenters.o: SmoothingCenters.cpp.o

.PHONY : SmoothingCenters.o

# target to build an object file
SmoothingCenters.cpp.o:
	$(MAKE) -f CMakeFiles/LandmarkSmoothing.dir/build.make CMakeFiles/LandmarkSmoothing.dir/SmoothingCenters.cpp.o
.PHONY : SmoothingCenters.cpp.o

SmoothingCenters.i: SmoothingCenters.cpp.i

.PHONY : SmoothingCenters.i

# target to preprocess a source file
SmoothingCenters.cpp.i:
	$(MAKE) -f CMakeFiles/LandmarkSmoothing.dir/build.make CMakeFiles/LandmarkSmoothing.dir/SmoothingCenters.cpp.i
.PHONY : SmoothingCenters.cpp.i

SmoothingCenters.s: SmoothingCenters.cpp.s

.PHONY : SmoothingCenters.s

# target to generate assembly for a file
SmoothingCenters.cpp.s:
	$(MAKE) -f CMakeFiles/LandmarkSmoothing.dir/build.make CMakeFiles/LandmarkSmoothing.dir/SmoothingCenters.cpp.s
.PHONY : SmoothingCenters.cpp.s

SplitsVideos.o: SplitsVideos.cpp.o

.PHONY : SplitsVideos.o

# target to build an object file
SplitsVideos.cpp.o:
	$(MAKE) -f CMakeFiles/SplitsVideos.dir/build.make CMakeFiles/SplitsVideos.dir/SplitsVideos.cpp.o
.PHONY : SplitsVideos.cpp.o

SplitsVideos.i: SplitsVideos.cpp.i

.PHONY : SplitsVideos.i

# target to preprocess a source file
SplitsVideos.cpp.i:
	$(MAKE) -f CMakeFiles/SplitsVideos.dir/build.make CMakeFiles/SplitsVideos.dir/SplitsVideos.cpp.i
.PHONY : SplitsVideos.cpp.i

SplitsVideos.s: SplitsVideos.cpp.s

.PHONY : SplitsVideos.s

# target to generate assembly for a file
SplitsVideos.cpp.s:
	$(MAKE) -f CMakeFiles/SplitsVideos.dir/build.make CMakeFiles/SplitsVideos.dir/SplitsVideos.cpp.s
.PHONY : SplitsVideos.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... rebuild_cache"
	@echo "... edit_cache"
	@echo "... SplitsVideos"
	@echo "... LandmarkSmoothing"
	@echo "... Landmark"
	@echo "... Landmark.o"
	@echo "... Landmark.i"
	@echo "... Landmark.s"
	@echo "... LandmarkSmoothing.o"
	@echo "... LandmarkSmoothing.i"
	@echo "... LandmarkSmoothing.s"
	@echo "... SmoothingCenters.o"
	@echo "... SmoothingCenters.i"
	@echo "... SmoothingCenters.s"
	@echo "... SplitsVideos.o"
	@echo "... SplitsVideos.i"
	@echo "... SplitsVideos.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

