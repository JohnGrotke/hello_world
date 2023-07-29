cmake_minimum_required(VERSION 3.16.3)

project(hello-world)

# Display the selected source directory for reference (optional)
message(STATUS "Using source directory: ${EXECUTABLE_OUTPUT_PATH}")

set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR}/build)

add_subdirectory(lib/Adder)

add_executable(${PROJECT_NAME} src/hello-world.cpp)

# Include the Adder library's include directory
target_include_directories(${PROJECT_NAME} PRIVATE
${EXECUTABLE_OUTPUT_PATH}/lib/Adder/
)

target_link_libraries(${PROJECT_NAME} PRIVATE Adder)