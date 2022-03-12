# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_ping_pong_benchmarking_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED ping_pong_benchmarking_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(ping_pong_benchmarking_FOUND FALSE)
  elseif(NOT ping_pong_benchmarking_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(ping_pong_benchmarking_FOUND FALSE)
  endif()
  return()
endif()
set(_ping_pong_benchmarking_CONFIG_INCLUDED TRUE)

# output package information
if(NOT ping_pong_benchmarking_FIND_QUIETLY)
  message(STATUS "Found ping_pong_benchmarking: 0.1.0 (${ping_pong_benchmarking_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'ping_pong_benchmarking' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${ping_pong_benchmarking_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(ping_pong_benchmarking_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${ping_pong_benchmarking_DIR}/${_extra}")
endforeach()
