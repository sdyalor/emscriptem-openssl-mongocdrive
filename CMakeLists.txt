project(ProjectName)
# cmake_minimum_required(VERSION 3.13.4)
#cmake_minimum_required(VERSION 3.19)
SET(GCC_COVERAGE_COMPILE_FLAGS "")
# SET(GCC_COVERAGE_LINK_FLAGS    "-s TOTAL_MEMORY=33554432")
# SET(CMAKE_CXX_FLAGS  "${CMAKE_CXX_FLAGS} ${GCC_COVERAGE_COMPILE_FLAGS}")
# SET(CMAKE_EXE_LINKER_FLAGS  "${CMAKE_EXE_LINKER_FLAGS} ${GCC_COVERAGE_LINK_FLAGS}")

include(add_openssl.cmake)
# include(add_borringssl.cmake)
include(add_mongo.cmake)

# set(TARGET_NAME "mongo")

set(source_files my_hello_mongo.c)

add_executable(${PROJECT_NAME} ${source_files})
# add_executable(${PROJECT_NAME} my_hello_mongo.c)

# target_link_libraries(${PROJECT_NAME} PRIVATE
#     ${mongodbcxx_lib_target}
# )

# find_package ( 1.7 REQUIRED)


# target_link_libraries (${PROJECT_NAME} PRIVATE mongoc_shared)

#mongoc_static
# target_link_libraries (${PROJECT_NAME} PRIVATE ${}::mongoc_shared)
# target_link_libraries (${PROJECT_NAME} PRIVATE mongo::mongoc_shared)
# add_library (bson_shared SHARED ${SOURCES} ${HEADERS} ${HEADERS_FORWARDING})



# configure_file(CMakeLists.txt.in
#                googletest-download/CMakeLists.txt)

# execute_process(COMMAND ${CMAKE_COMMAND} -G "${CMAKE_GENERATOR}" .
#   WORKING_DIRECTORY ${CMAKE_BINARY_DIR}/googletest-download )
# execute_process(COMMAND ${CMAKE_COMMAND} --build .
#   WORKING_DIRECTORY ${CMAKE_BINARY_DIR}/googletest-download )




# add_subdirectory(${CMAKE_BINARY_DIR}/mongo-c-driver-src
#                  ${CMAKE_BINARY_DIR}/mongo-c-driver-build EXCLUDE_FROM_ALL)

# # add_subdirectory(mongo-c-driver-b EXCLUDE_FROM_ALL)
# # find_package (bson-1.0  REQUIRED)
# # find_package (mongoc-1.0 1.7 QUIET)

# #-DENABLE_AUTOMATIC_INIT_AND_CLEANUP=OFF
# target_link_libraries (${PROJECT_NAME} PRIVATE ${CMAKE_BINARY_DIR}/mongo-c-driver-build::mongoc_shared)

# include(FetchContent)
# if (NOT TARGET mongo-c-driver)
# FetchContent_Declare(
#    mongo-c-driver
#    GIT_REPOSITORY    https://github.com/mongodb/mongo-c-driver.git
#    GIT_TAG           master
#    SOURCE_DIR        "${CMAKE_BINARY_DIR}/mongo-c-driver-src"
#    BINARY_DIR        "${CMAKE_BINARY_DIR}/mongo-c-driver-build"
#    CONFIGURE_COMMAND ""
#    BUILD_COMMAND     ""
#    INSTALL_COMMAND   ""
#    TEST_COMMAND      ""
#    CMAKE_ARGS "-DENABLE_AUTOMATIC_INIT_AND_CLEANUP=OFF"
# )
# FetchContent_MakeAvailable(${mongo-c-driver_BYNARY_DIR})
## FetchContent_MakeAvailable(${mongo-c-driver})
# FetchContent_Populate(
  # ${mongo-c-driver_BINARY_DIR}/src/libbson
  # ${mongo-c-driver_BINARY_DIR}/src/libmongoc
  # )
# add_subdirectory(${foobar_SOURCE_DIR} ${foobar_BINARY_DIR})
# if(NOT mongo-c-driver_POPULATED)
# FetchContent_Populate(mongo-c-driver)
# add_subdirectory(${mongo-c-driver_SOURCE_DIR}/src/libbson ${mongo-c-driver_BINARY_DIR}/src/libbson)
# endif()
# set(ZLIB_DIR ${zlib_dfet__BINARY_DIR})
# add_subdirectory (${mongo-c-driver_SOURCE_DIR} ${mongo-c-driver_BYNARY_DIR} EXCLUDE_FROM_ALL)
# add_subdirectory(${CMAKE_BINARY_DIR}/mongo-c-driver-src
                  # ${CMAKE_BINARY_DIR}/mongo-c-driver-build EXCLUDE_FROM_ALL)
#find_package (${mongo-c-driver_BINARY_DIR}/src/libbson/bson/bson-1.0 REQUIRED)
# find_package (bson-1.0 REQUIRED)
#1.18.0
# set (bson-1.0_DIR ${mongo-c-driver_BINARY_DIR}/src/libbson/bson)
# find_package (${mongo-c-driver_BINARY_DIR}/src/libmongoc/mongoc/mongoc-1.0 1.7 REQUIRED)

# target_link_libraries (${PROJECT_NAME} PRIVATE mongo::mongoc_shared)
# target_link_libraries (${PROJECT_NAME} PRIVATE mongo-c-driver)

# endif()


# add_subdirectory (${mongo-c-driver_SOURCE_DIR} ${mongo-c-driver_BYNARY_DIR} EXCLUDE_FROM_ALL)
# find_package (mongoc-1.0 1.7 REQUIRED)
# target_link_libraries (${PROJECT_NAME} PRIVATE ${}::mongoc_shared)