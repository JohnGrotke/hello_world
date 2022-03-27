cmake_minimum_required(VERSION 3.16.3)

project(HelloWorld)

add_executable(${PROJECT_NAME} helloWorld.cpp)

add_subdirectory(Adder)

target_include_directories(${PROJECT_NAME} PRIVATE Adder)
target_link_directories(${PROJECT_NAME} PRIVATE Adder)
target_link_libraries(${PROJECT_NAME} Adder)