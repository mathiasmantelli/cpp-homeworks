cmake_minimum_required(VERSION 3.5)
#SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17")
SET(CMAKE_INSTALL_PREFIX install/)

project(homework_1)

include_directories(include/)

add_library(sum src/sum.cpp)
add_library(subtract src/subtract.cpp)

add_executable(main src/main.cpp)

install(TARGETS main DESTINATION bin)
 
target_link_libraries(main sum subtract)