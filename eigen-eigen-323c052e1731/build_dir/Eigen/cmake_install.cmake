# Install script for directory: /home/nvidia/Downloads/eigen-eigen-323c052e1731/Eigen

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/Eigen" TYPE FILE FILES
    "/home/nvidia/Downloads/eigen-eigen-323c052e1731/Eigen/Cholesky"
    "/home/nvidia/Downloads/eigen-eigen-323c052e1731/Eigen/CholmodSupport"
    "/home/nvidia/Downloads/eigen-eigen-323c052e1731/Eigen/Core"
    "/home/nvidia/Downloads/eigen-eigen-323c052e1731/Eigen/Dense"
    "/home/nvidia/Downloads/eigen-eigen-323c052e1731/Eigen/Eigen"
    "/home/nvidia/Downloads/eigen-eigen-323c052e1731/Eigen/Eigenvalues"
    "/home/nvidia/Downloads/eigen-eigen-323c052e1731/Eigen/Geometry"
    "/home/nvidia/Downloads/eigen-eigen-323c052e1731/Eigen/Householder"
    "/home/nvidia/Downloads/eigen-eigen-323c052e1731/Eigen/IterativeLinearSolvers"
    "/home/nvidia/Downloads/eigen-eigen-323c052e1731/Eigen/Jacobi"
    "/home/nvidia/Downloads/eigen-eigen-323c052e1731/Eigen/LU"
    "/home/nvidia/Downloads/eigen-eigen-323c052e1731/Eigen/MetisSupport"
    "/home/nvidia/Downloads/eigen-eigen-323c052e1731/Eigen/OrderingMethods"
    "/home/nvidia/Downloads/eigen-eigen-323c052e1731/Eigen/PaStiXSupport"
    "/home/nvidia/Downloads/eigen-eigen-323c052e1731/Eigen/PardisoSupport"
    "/home/nvidia/Downloads/eigen-eigen-323c052e1731/Eigen/QR"
    "/home/nvidia/Downloads/eigen-eigen-323c052e1731/Eigen/QtAlignedMalloc"
    "/home/nvidia/Downloads/eigen-eigen-323c052e1731/Eigen/SPQRSupport"
    "/home/nvidia/Downloads/eigen-eigen-323c052e1731/Eigen/SVD"
    "/home/nvidia/Downloads/eigen-eigen-323c052e1731/Eigen/Sparse"
    "/home/nvidia/Downloads/eigen-eigen-323c052e1731/Eigen/SparseCholesky"
    "/home/nvidia/Downloads/eigen-eigen-323c052e1731/Eigen/SparseCore"
    "/home/nvidia/Downloads/eigen-eigen-323c052e1731/Eigen/SparseLU"
    "/home/nvidia/Downloads/eigen-eigen-323c052e1731/Eigen/SparseQR"
    "/home/nvidia/Downloads/eigen-eigen-323c052e1731/Eigen/StdDeque"
    "/home/nvidia/Downloads/eigen-eigen-323c052e1731/Eigen/StdList"
    "/home/nvidia/Downloads/eigen-eigen-323c052e1731/Eigen/StdVector"
    "/home/nvidia/Downloads/eigen-eigen-323c052e1731/Eigen/SuperLUSupport"
    "/home/nvidia/Downloads/eigen-eigen-323c052e1731/Eigen/UmfPackSupport"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/Eigen" TYPE DIRECTORY FILES "/home/nvidia/Downloads/eigen-eigen-323c052e1731/Eigen/src" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

