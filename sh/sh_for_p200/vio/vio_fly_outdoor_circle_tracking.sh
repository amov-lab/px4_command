##激光雷达自主飞行脚本
gnome-terminal --window -e 'bash -c "roscore; exec bash"' \
--tab -e 'bash -c "sleep 5; roslaunch mavros px4.launch fcu_url:="/dev/ttyTHS2:921600"; exec bash"' \
--tab -e 'bash -c "sleep 5; roslaunch realsense2_camera rs_t265.launch; exec bash"' \
--tab -e 'bash -c "sleep 5; roslaunch vision_to_mavros t265_tf_to_mavros.launch; exec bash"' \
--tab -e 'bash -c "sleep 5; roslaunch px4_command px4_pos_estimator.launch; exec bash"' \
--tab -e 'bash -c "sleep 5; roslaunch px4_command px4_pos_controller.launch; exec bash"' \
--tab -e 'bash -c "sleep 2; rosrun web_cam web_cam; exec bash"' \
--tab -e 'bash -c "sleep 2; roslaunch ellipse_det ellipse_det.launch; exec bash"' \
--tab -e 'bash -c "sleep 2; roslaunch px4_command target_tracking.launch; exec bash"' \

