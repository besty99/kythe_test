cmake_minimum_required (VERSION 2.8)
project (HelloWorld)
find_package(Java REQUIRED)
include(UseJava)

set(SRC_LIST HelloWorld.java)


set(CMAKE_JAVA_COMPILE_FLAGS "-source" "1.8" "-target" "1.8")

add_jar(HelloWorld ${SRC_LIST})
