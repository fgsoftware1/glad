cmake_minimum_required(VERSION 3.30)
project(glad LANGUAGES C)

add_library(${PROJECT_NAME} STATIC ${CMAKE_CURRENT_SOURCE_DIR}/src/glad.c)
target_include_directories(${PROJECT_NAME} ${CMAKE_CURRENT_SOURCE_DIR}/include)
