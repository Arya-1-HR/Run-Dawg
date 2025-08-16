cmake_minimum_required(VERSION 3.10)
project(Run-Dawg)

include_directories(includes)

file(GLOB SRC_FILES src/*.cpp)

add_executable(dawg ${SRC_FILES})