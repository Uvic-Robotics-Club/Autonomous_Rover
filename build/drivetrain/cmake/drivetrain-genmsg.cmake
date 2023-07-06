# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "drivetrain: 1 messages, 0 services")

set(MSG_I_FLAGS "-Idrivetrain:/home/jetson/Autonomous_Rover/src/drivetrain/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(drivetrain_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/jetson/Autonomous_Rover/src/drivetrain/msg/Speed.msg" NAME_WE)
add_custom_target(_drivetrain_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "drivetrain" "/home/jetson/Autonomous_Rover/src/drivetrain/msg/Speed.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(drivetrain
  "/home/jetson/Autonomous_Rover/src/drivetrain/msg/Speed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/drivetrain
)

### Generating Services

### Generating Module File
_generate_module_cpp(drivetrain
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/drivetrain
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(drivetrain_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(drivetrain_generate_messages drivetrain_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jetson/Autonomous_Rover/src/drivetrain/msg/Speed.msg" NAME_WE)
add_dependencies(drivetrain_generate_messages_cpp _drivetrain_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(drivetrain_gencpp)
add_dependencies(drivetrain_gencpp drivetrain_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS drivetrain_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(drivetrain
  "/home/jetson/Autonomous_Rover/src/drivetrain/msg/Speed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/drivetrain
)

### Generating Services

### Generating Module File
_generate_module_eus(drivetrain
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/drivetrain
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(drivetrain_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(drivetrain_generate_messages drivetrain_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jetson/Autonomous_Rover/src/drivetrain/msg/Speed.msg" NAME_WE)
add_dependencies(drivetrain_generate_messages_eus _drivetrain_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(drivetrain_geneus)
add_dependencies(drivetrain_geneus drivetrain_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS drivetrain_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(drivetrain
  "/home/jetson/Autonomous_Rover/src/drivetrain/msg/Speed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/drivetrain
)

### Generating Services

### Generating Module File
_generate_module_lisp(drivetrain
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/drivetrain
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(drivetrain_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(drivetrain_generate_messages drivetrain_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jetson/Autonomous_Rover/src/drivetrain/msg/Speed.msg" NAME_WE)
add_dependencies(drivetrain_generate_messages_lisp _drivetrain_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(drivetrain_genlisp)
add_dependencies(drivetrain_genlisp drivetrain_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS drivetrain_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(drivetrain
  "/home/jetson/Autonomous_Rover/src/drivetrain/msg/Speed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/drivetrain
)

### Generating Services

### Generating Module File
_generate_module_nodejs(drivetrain
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/drivetrain
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(drivetrain_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(drivetrain_generate_messages drivetrain_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jetson/Autonomous_Rover/src/drivetrain/msg/Speed.msg" NAME_WE)
add_dependencies(drivetrain_generate_messages_nodejs _drivetrain_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(drivetrain_gennodejs)
add_dependencies(drivetrain_gennodejs drivetrain_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS drivetrain_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(drivetrain
  "/home/jetson/Autonomous_Rover/src/drivetrain/msg/Speed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/drivetrain
)

### Generating Services

### Generating Module File
_generate_module_py(drivetrain
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/drivetrain
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(drivetrain_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(drivetrain_generate_messages drivetrain_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jetson/Autonomous_Rover/src/drivetrain/msg/Speed.msg" NAME_WE)
add_dependencies(drivetrain_generate_messages_py _drivetrain_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(drivetrain_genpy)
add_dependencies(drivetrain_genpy drivetrain_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS drivetrain_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/drivetrain)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/drivetrain
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(drivetrain_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/drivetrain)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/drivetrain
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(drivetrain_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/drivetrain)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/drivetrain
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(drivetrain_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/drivetrain)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/drivetrain
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(drivetrain_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/drivetrain)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/drivetrain\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/drivetrain
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  string(REGEX REPLACE "([][+.*()^])" "\\\\\\1" ESCAPED_PATH "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/drivetrain")
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/drivetrain
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${ESCAPED_PATH}/.+/__init__.pyc?$"
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(drivetrain_generate_messages_py std_msgs_generate_messages_py)
endif()
