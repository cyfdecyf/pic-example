cmake_minimum_required(VERSION 3.19)

project(pic-example C)

if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Release)
endif()

set(CMAKE_C_FLAGS_RELEASE "-O2")
set(CMAKE_C_FLAGS_DEBUG "-O0 -ggdb")

# PIC enabled lib and executable.
add_library(foo_pic STATIC foo.c)
set_target_properties(foo_pic PROPERTIES POSITION_INDEPENDENT_CODE ON)

add_executable(e_pic main.c)
target_link_libraries(e_pic foo_pic)


# non-PIC enabled lib and executable.
add_library(foo STATIC foo.c)
set_target_properties(foo PROPERTIES POSITION_INDEPENDENT_CODE OFF)

add_executable(e main.c)
target_link_libraries(e foo)

