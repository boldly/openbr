set(BR_WITH_DLIB ON CACHE BOOL "Build with DLib")

if(${BR_WITH_DLIB})
  ExternalProject_Add(dlib
                      URL https://github.com/davisking/dlib/releases/download/v18.16/dlib-18.16.tar.bz2
                      URL_MD5 e9e5449bc25370afce2d254327afac99
                      SOURCE_DIR "${CMAKE_SOURCE_DIR}/3rdparty/dlib-18.16"
                      CONFIGURE_COMMAND ""
                      BUILD_COMMAND ""
                      INSTALL_COMMAND "")
  include_directories("${CMAKE_SOURCE_DIR}/3rdparty/dlib-18.16")
else()
  set(BR_EXCLUDED_PLUGINS ${BR_EXCLUDED_PLUGINS} plugins/classification/dlib.cpp)
endif()