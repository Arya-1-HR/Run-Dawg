cmake_minimum_required(VERSION 3.10)
project(Circulate)

include_directories(includes)

file(GLOB SRC_FILES src/*.cpp)

add_executable(execute ${SRC_FILES})