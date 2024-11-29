cmake_minimum_required(VERSION 3.12...3.14)
project(aarch64-asm-ex ASM)
set(CMAKE_TOOLCHAIN_FILE ${PROJECT_SOURCE_DIR}/cmake/aarch64-cross.cmake)
add_subdirectory(${CMAKE_SOURCE_DIR}/examples)