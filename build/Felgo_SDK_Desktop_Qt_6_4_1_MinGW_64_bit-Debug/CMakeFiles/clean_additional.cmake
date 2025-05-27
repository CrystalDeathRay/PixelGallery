# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\apppixelgallery_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\apppixelgallery_autogen.dir\\ParseCache.txt"
  "apppixelgallery_autogen"
  )
endif()
