#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/jetson/ard_ros_motor/src/drivetrain"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/jetson/ard_ros_motor/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/jetson/ard_ros_motor/install/lib/python3/dist-packages:/home/jetson/ard_ros_motor/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/jetson/ard_ros_motor/build" \
    "/usr/bin/python3" \
    "/home/jetson/ard_ros_motor/src/drivetrain/setup.py" \
     \
    build --build-base "/home/jetson/ard_ros_motor/build/drivetrain" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/jetson/ard_ros_motor/install" --install-scripts="/home/jetson/ard_ros_motor/install/bin"