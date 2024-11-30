cmake_minimum_required(VERSION 3.12...3.14)
project(aarch64-asm-ex ASM)

option(STATIC_LINK_OPT OFF)
list(APPEND CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake)
include(aarch64-cross)
crosscompiler("aarch64-linux-gnu-")
add_subdirectory(${CMAKE_SOURCE_DIR}/examples)