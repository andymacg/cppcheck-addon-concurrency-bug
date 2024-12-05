cmake_minimum_required(VERSION 3.25 FATAL_ERROR)
project(bugs VERSION 0.0 LANGUAGES C)

set(CMAKE_EXPORT_COMPILE_COMMANDS yes)
set(BUILD_SHARED_LIBS no)

add_compile_options($<$<COMPILE_LANGUAGE:C>:-std=c17>)
add_compile_options($<$<COMPILE_LANGUAGE:C>:-Og>)

add_subdirectory(A)
add_subdirectory(B)
add_subdirectory(C)
