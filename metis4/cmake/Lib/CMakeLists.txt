# Find sources.
file(GLOB metis_sources *.c)

# Find headers.
file(GLOB metis_headers *.h)

# Build libmetis.
add_library(metis ${METIS_LIBRARY_TYPE} ${metis_sources})

if(UNIX)
  target_link_libraries(metis m)
endif()

install(TARGETS metis
  LIBRARY DESTINATION lib
  RUNTIME DESTINATION lib
  ARCHIVE DESTINATION lib)

install(FILES ${metis_headers}
  DESTINATION "include/metis"
  PERMISSIONS OWNER_READ GROUP_READ WORLD_READ OWNER_WRITE)
