catkin build versavis
shell=`grep ^$(id -un): /etc/passwd | cut -d : -f 7- | rev |  cut -d'/' -f1 | rev`
devel=/`catkin config | grep ^"Devel Space:" |  cut -d'/' -f2-`
source_path="$devel"/setup."$shell"

echo $source_path
source $source_path
rm -rf libraries/ros_lib
rosrun rosserial_arduino make_libraries.py libraries
