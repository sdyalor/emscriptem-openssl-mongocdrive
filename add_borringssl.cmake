include(FetchContent)
FetchContent_Declare(openssl
  GIT_REPOSITORY    https://boringssl.googlesource.com/boringssl
  GIT_TAG           master
  SOURCE_DIR        "${CMAKE_BINARY_DIR}/openssl-src"
  BINARY_DIR        "${CMAKE_BINARY_DIR}/openssl-build"
  CONFIGURE_COMMAND ""
  BUILD_COMMAND     ""
  INSTALL_COMMAND   ""
  TEST_COMMAND      ""
  CMAKE_ARGS ""
)
FetchContent_GetProperties(openssl)
if(NOT openssl_POPULATED)
set(OPENSSL_NO_ASM ON)
set(ENABLE_EXTRATESTS OFF)
set(ENABLE_NC OFF)
set(BORINGSSL_ALLOW_CXX_RUNTIME OFF)
set(INITIAL_MEMORY 36554432)
  FetchContent_Populate(openssl)
  add_subdirectory(${openssl_SOURCE_DIR} ${openssl_BINARY_DIR})
  # set(OPENSSL_CRYPTO_LIBRARY crypto)
  # set(OPENSSL ssl)
endif()