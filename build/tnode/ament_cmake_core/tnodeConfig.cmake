# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_tnode_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED tnode_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(tnode_FOUND FALSE)
  elseif(NOT tnode_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(tnode_FOUND FALSE)
  endif()
  return()
endif()
set(_tnode_CONFIG_INCLUDED TRUE)

# output package information
if(NOT tnode_FIND_QUIETLY)
  message(STATUS "Found tnode: 0.0.0 (${tnode_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'tnode' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${tnode_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(tnode_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${tnode_DIR}/${_extra}")
endforeach()
