# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/jhlee/Desktop/project/opengl-playground

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/jhlee/Desktop/project/opengl-playground/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/opengl_playground.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/opengl_playground.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/opengl_playground.dir/flags.make

CMakeFiles/opengl_playground.dir/main.cpp.o: CMakeFiles/opengl_playground.dir/flags.make
CMakeFiles/opengl_playground.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jhlee/Desktop/project/opengl-playground/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/opengl_playground.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opengl_playground.dir/main.cpp.o -c /Users/jhlee/Desktop/project/opengl-playground/main.cpp

CMakeFiles/opengl_playground.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opengl_playground.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jhlee/Desktop/project/opengl-playground/main.cpp > CMakeFiles/opengl_playground.dir/main.cpp.i

CMakeFiles/opengl_playground.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opengl_playground.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jhlee/Desktop/project/opengl-playground/main.cpp -o CMakeFiles/opengl_playground.dir/main.cpp.s

CMakeFiles/opengl_playground.dir/Shader.cpp.o: CMakeFiles/opengl_playground.dir/flags.make
CMakeFiles/opengl_playground.dir/Shader.cpp.o: ../Shader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jhlee/Desktop/project/opengl-playground/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/opengl_playground.dir/Shader.cpp.o"
	/Applications/Xcode.app/Contents/Developer/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opengl_playground.dir/Shader.cpp.o -c /Users/jhlee/Desktop/project/opengl-playground/Shader.cpp

CMakeFiles/opengl_playground.dir/Shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opengl_playground.dir/Shader.cpp.i"
	/Applications/Xcode.app/Contents/Developer/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jhlee/Desktop/project/opengl-playground/Shader.cpp > CMakeFiles/opengl_playground.dir/Shader.cpp.i

CMakeFiles/opengl_playground.dir/Shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opengl_playground.dir/Shader.cpp.s"
	/Applications/Xcode.app/Contents/Developer/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jhlee/Desktop/project/opengl-playground/Shader.cpp -o CMakeFiles/opengl_playground.dir/Shader.cpp.s

CMakeFiles/opengl_playground.dir/Texture.cpp.o: CMakeFiles/opengl_playground.dir/flags.make
CMakeFiles/opengl_playground.dir/Texture.cpp.o: ../Texture.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jhlee/Desktop/project/opengl-playground/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/opengl_playground.dir/Texture.cpp.o"
	/Applications/Xcode.app/Contents/Developer/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opengl_playground.dir/Texture.cpp.o -c /Users/jhlee/Desktop/project/opengl-playground/Texture.cpp

CMakeFiles/opengl_playground.dir/Texture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opengl_playground.dir/Texture.cpp.i"
	/Applications/Xcode.app/Contents/Developer/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jhlee/Desktop/project/opengl-playground/Texture.cpp > CMakeFiles/opengl_playground.dir/Texture.cpp.i

CMakeFiles/opengl_playground.dir/Texture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opengl_playground.dir/Texture.cpp.s"
	/Applications/Xcode.app/Contents/Developer/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jhlee/Desktop/project/opengl-playground/Texture.cpp -o CMakeFiles/opengl_playground.dir/Texture.cpp.s

CMakeFiles/opengl_playground.dir/Model.cpp.o: CMakeFiles/opengl_playground.dir/flags.make
CMakeFiles/opengl_playground.dir/Model.cpp.o: ../Model.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jhlee/Desktop/project/opengl-playground/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/opengl_playground.dir/Model.cpp.o"
	/Applications/Xcode.app/Contents/Developer/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opengl_playground.dir/Model.cpp.o -c /Users/jhlee/Desktop/project/opengl-playground/Model.cpp

CMakeFiles/opengl_playground.dir/Model.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opengl_playground.dir/Model.cpp.i"
	/Applications/Xcode.app/Contents/Developer/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jhlee/Desktop/project/opengl-playground/Model.cpp > CMakeFiles/opengl_playground.dir/Model.cpp.i

CMakeFiles/opengl_playground.dir/Model.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opengl_playground.dir/Model.cpp.s"
	/Applications/Xcode.app/Contents/Developer/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jhlee/Desktop/project/opengl-playground/Model.cpp -o CMakeFiles/opengl_playground.dir/Model.cpp.s

CMakeFiles/opengl_playground.dir/Mesh.cpp.o: CMakeFiles/opengl_playground.dir/flags.make
CMakeFiles/opengl_playground.dir/Mesh.cpp.o: ../Mesh.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jhlee/Desktop/project/opengl-playground/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/opengl_playground.dir/Mesh.cpp.o"
	/Applications/Xcode.app/Contents/Developer/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opengl_playground.dir/Mesh.cpp.o -c /Users/jhlee/Desktop/project/opengl-playground/Mesh.cpp

CMakeFiles/opengl_playground.dir/Mesh.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opengl_playground.dir/Mesh.cpp.i"
	/Applications/Xcode.app/Contents/Developer/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jhlee/Desktop/project/opengl-playground/Mesh.cpp > CMakeFiles/opengl_playground.dir/Mesh.cpp.i

CMakeFiles/opengl_playground.dir/Mesh.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opengl_playground.dir/Mesh.cpp.s"
	/Applications/Xcode.app/Contents/Developer/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jhlee/Desktop/project/opengl-playground/Mesh.cpp -o CMakeFiles/opengl_playground.dir/Mesh.cpp.s

CMakeFiles/opengl_playground.dir/Material.cpp.o: CMakeFiles/opengl_playground.dir/flags.make
CMakeFiles/opengl_playground.dir/Material.cpp.o: ../Material.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jhlee/Desktop/project/opengl-playground/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/opengl_playground.dir/Material.cpp.o"
	/Applications/Xcode.app/Contents/Developer/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opengl_playground.dir/Material.cpp.o -c /Users/jhlee/Desktop/project/opengl-playground/Material.cpp

CMakeFiles/opengl_playground.dir/Material.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opengl_playground.dir/Material.cpp.i"
	/Applications/Xcode.app/Contents/Developer/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jhlee/Desktop/project/opengl-playground/Material.cpp > CMakeFiles/opengl_playground.dir/Material.cpp.i

CMakeFiles/opengl_playground.dir/Material.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opengl_playground.dir/Material.cpp.s"
	/Applications/Xcode.app/Contents/Developer/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jhlee/Desktop/project/opengl-playground/Material.cpp -o CMakeFiles/opengl_playground.dir/Material.cpp.s

CMakeFiles/opengl_playground.dir/Camera.cpp.o: CMakeFiles/opengl_playground.dir/flags.make
CMakeFiles/opengl_playground.dir/Camera.cpp.o: ../Camera.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jhlee/Desktop/project/opengl-playground/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/opengl_playground.dir/Camera.cpp.o"
	/Applications/Xcode.app/Contents/Developer/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opengl_playground.dir/Camera.cpp.o -c /Users/jhlee/Desktop/project/opengl-playground/Camera.cpp

CMakeFiles/opengl_playground.dir/Camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opengl_playground.dir/Camera.cpp.i"
	/Applications/Xcode.app/Contents/Developer/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jhlee/Desktop/project/opengl-playground/Camera.cpp > CMakeFiles/opengl_playground.dir/Camera.cpp.i

CMakeFiles/opengl_playground.dir/Camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opengl_playground.dir/Camera.cpp.s"
	/Applications/Xcode.app/Contents/Developer/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jhlee/Desktop/project/opengl-playground/Camera.cpp -o CMakeFiles/opengl_playground.dir/Camera.cpp.s

# Object files for target opengl_playground
opengl_playground_OBJECTS = \
"CMakeFiles/opengl_playground.dir/main.cpp.o" \
"CMakeFiles/opengl_playground.dir/Shader.cpp.o" \
"CMakeFiles/opengl_playground.dir/Texture.cpp.o" \
"CMakeFiles/opengl_playground.dir/Model.cpp.o" \
"CMakeFiles/opengl_playground.dir/Mesh.cpp.o" \
"CMakeFiles/opengl_playground.dir/Material.cpp.o" \
"CMakeFiles/opengl_playground.dir/Camera.cpp.o"

# External object files for target opengl_playground
opengl_playground_EXTERNAL_OBJECTS =

opengl_playground: CMakeFiles/opengl_playground.dir/main.cpp.o
opengl_playground: CMakeFiles/opengl_playground.dir/Shader.cpp.o
opengl_playground: CMakeFiles/opengl_playground.dir/Texture.cpp.o
opengl_playground: CMakeFiles/opengl_playground.dir/Model.cpp.o
opengl_playground: CMakeFiles/opengl_playground.dir/Mesh.cpp.o
opengl_playground: CMakeFiles/opengl_playground.dir/Material.cpp.o
opengl_playground: CMakeFiles/opengl_playground.dir/Camera.cpp.o
opengl_playground: CMakeFiles/opengl_playground.dir/build.make
opengl_playground: ../dependencies/GLEW/lib/libGLEW.2.2.0.dylib
opengl_playground: ../dependencies/GLFW/lib/libglfw.3.3.dylib
opengl_playground: ../dependencies/assimp/lib/libassimp.5.0.0.dylib
opengl_playground: ../dependencies/SOIL2/lib/libsoil2-debug.dylib
opengl_playground: CMakeFiles/opengl_playground.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jhlee/Desktop/project/opengl-playground/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable opengl_playground"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/opengl_playground.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/opengl_playground.dir/build: opengl_playground

.PHONY : CMakeFiles/opengl_playground.dir/build

CMakeFiles/opengl_playground.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/opengl_playground.dir/cmake_clean.cmake
.PHONY : CMakeFiles/opengl_playground.dir/clean

CMakeFiles/opengl_playground.dir/depend:
	cd /Users/jhlee/Desktop/project/opengl-playground/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jhlee/Desktop/project/opengl-playground /Users/jhlee/Desktop/project/opengl-playground /Users/jhlee/Desktop/project/opengl-playground/cmake-build-debug /Users/jhlee/Desktop/project/opengl-playground/cmake-build-debug /Users/jhlee/Desktop/project/opengl-playground/cmake-build-debug/CMakeFiles/opengl_playground.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/opengl_playground.dir/depend
