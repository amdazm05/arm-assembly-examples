file(GLOB_RECURSE EXAMPLES 
    ${CMAKE_SOURCE_DIR}/*.s 
    ${CMAKE_SOURCE_DIR}/*.S)

foreach(EXAMPLE ${EXAMPLES})
    cmake_path(GET EXAMPLE FILENAME filename)
    cmake_path(GET filename STEM exename)
    add_executable(${exename} ${EXAMPLE})
endforeach()
