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

echo_and_run cd "/home/jetson/Autonomous_Rover/src/drivetrain"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/jetson/Autonomous_Rover/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/jetson/Autonomous_Rover/install/lib/python3/dist-packages:/home/jetson/Autonomous_Rover/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/jetson/Autonomous_Rover/build" \
    "/usr/bin/python3" \
    "/home/jetson/Autonomous_Rover/src/drivetrain/setup.py" \
     \
    build --build-base "/home/jetson/Autonomous_Rover/build/drivetrain" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/jetson/Autonomous_Rover/install" --install-scripts="/home/jetson/Autonomous_Rover/install/bin"
