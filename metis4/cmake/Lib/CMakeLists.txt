# Find sources.
file(GLOB metis_sources *.c)

# Build libmetis.
add_library(metis ${METIS_LIBRARY_TYPE} ${metis_sources})

if(UNIX)
  target_link_libraries(metis m)
endif()

install(TARGETS metis
  LIBRARY DESTINATION lib
  RUNTIME DESTINATION lib
  ARCHIVE DESTINATION lib)
