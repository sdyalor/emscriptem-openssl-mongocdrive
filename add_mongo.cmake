include(FetchContent)

FetchContent_Declare(mongocdriver
  GIT_REPOSITORY    https://github.com/mongodb/mongo-c-driver.git
  GIT_TAG           master
  SOURCE_DIR        "${CMAKE_BINARY_DIR}/mongo-c-driver-src"
  BINARY_DIR        "${CMAKE_BINARY_DIR}/mongo-c-driver-build"
  CONFIGURE_COMMAND ""
  BUILD_COMMAND     ""
  INSTALL_COMMAND   ""
  TEST_COMMAND      ""
  CMAKE_ARGS "-DENABLE_AUTOMATIC_INIT_AND_CLEANUP=OFF -DENABLE_SSL=OFF"
)
FetchContent_GetProperties(mongocdriver)
if(NOT mongocdriver_POPULATED)
  set(BUILD_SHARED_AND_STATIC_LIBS OFF CACHE BOOL "" FORCE)
  set(ENABLE_EXTRA_ALIGNMENT OFF CACHE BOOL "" FORCE)
  set(ENABLE_TESTS OFF CACHE BOOL "" FORCE)
  set(ENABLE_EXAMPLES OFF CACHE BOOL "" FORCE)
  set(ENABLE_UNINSTALL OFF CACHE BOOL "" FORCE)
  set(ENABLE_PIC ON CACHE BOOL "" FORCE)
  # set(ENABLE_SSL OPENSSL CACHE STRING "" FORCE)
  # set(ENABLE_SSL OPENSSL OFF STRING "" FORCE)
  set(ENABLE_AUTOMATIC_INIT_AND_CLEANUP OFF CACHE BOOL "" FORCE)
  FetchContent_Populate(mongocdriver)
  add_subdirectory(${mongocdriver_SOURCE_DIR} ${mongocdriver_BINARY_DIR})
endif()

# Manage a unique name for mongodbcxx target as static and shared targets do not have same name
if(TARGET mongocxx_static)
  set(mongodbcxx_lib_target mongocxx_static)
elseif(TARGET mongocxx_shared)
  set(mongodbcxx_lib_target mongocxx_shared)
endif()




message(STATUS "MongoDB C++ Driver library is: ${mongodbcxx_lib_target}")
