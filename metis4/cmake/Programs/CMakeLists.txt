# Build program.
add_executable(graphchk graphchk.c io.c)
add_executable(pmetis pmetis.c io.c)
add_executable(oemetis io.c oemetis.c smbfactor.c)
add_executable(onmetis io.c onmetis.c smbfactor.c)
add_executable(mesh2dual mesh2dual.c io.c)
add_executable(mesh2nodal mesh2nodal.c io.c)
add_executable(partdmesh partdmesh.c io.c)
add_executable(partnmesh partnmesh.c io.c)

foreach(prog graphchk pmetis oemetis onmetis mesh2dual mesh2nodal partdmesh partnmesh graphchk)
  target_link_libraries(${prog} metis)
endforeach(prog)

if(METIS_INSTALL_BIN)
  install(TARGETS graphchk pmetis oemetis onmetis mesh2dual mesh2nodal partdmesh partnmesh graphchk
    RUNTIME DESTINATION bin)
endif()

