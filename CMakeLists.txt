cmake_minimum_required(VERSION 3.16.3)

project(hello-world)

# Set the output directory for executables (optional)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR}/build)

add_subdirectory(lib/Adder)

add_executable(${PROJECT_NAME} src/hello-world.cpp)

# Include the Adder library's include directory
target_include_directories(${PROJECT_NAME} PRIVATE
    ${CMAKE_SOURCE_DIR}/lib/Adder/
)

target_link_libraries(${PROJECT_NAME} PRIVATE Adder)