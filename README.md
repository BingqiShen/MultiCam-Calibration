# MultiCam-Calibration
A method to calibrate the extrinsics of multiple cameras using aprilslam algorithm

only can be used in Ubuntu16.04

Instruction:

1. 准备april tag录制建图bag：
```
rosbag record /camera1/camera1_resize
```
在录制bag期间尽可能保证相机视野内每一帧中至少包含两个april tag，建议录制bag的时候让相机多转几圈

2. 填写配置文件：

在/install/share/aprilslam/aprilslam/config 文件夹下添加相机内参文件，文件命名格式为 ******_0.txt。

修改/install/share/aprilslam/launch/detector.launch

3. 建图：

打开一个terminator
```
source apriltag_mit/setup.bash --extend
source install/setup.bash --extend
```

启动程序：
```
roslaunch aprilslam  slam.launch
```
播放运动相机录制的bag，如有出现一下错误，重新启动程序，并将bag 延后开始播放
```
rosbag play --clock --pause mynt.bag 
```

4. 运行定位程序，实现相机外参标定：

设定第一个相机的相机参数
```
source install/setup.bash --extend
rosservice call /aprilslam/detector/reset_params "{intrinsic_file_name: 'sbq_1_', camera_topic: '/camera1/camera1_resize', camera_id: 0, image_width: 1224, image_height: 1024}"
rosservice call /aprilslam/map/reset_params "{intrinsic_file_name: 'sbq_1_', camera_topic: '/camera1/camera1_resize', camera_id: 0, image_width: 1224, image_height: 1024}"
```

录制定位bag——多个相机在静止状态下录制，2-3s
```
rosbag play --clock --pause static.bag
```
播放一段时间（数秒即可）后，设定该相机作为 base 相机（设置后，base相机输出的relative pose 为identity）

```
source install/setup.bash --extend
rosservice call /aprilslam/map/set_init_camera "{}"
```

设置其他相机的相机参数，
```
source ~/catkin_ws/devel/setup.bash --extend
rosservice call /aprilslam/detector/reset_params "{intrinsic_file_name: 'sbq_2_', camera_topic: '/camera2/camera2_resize', camera_id: 0, image_width: 1224, image_height: 1024}"
rosservice call /aprilslam/map/reset_params "{intrinsic_file_name: 'sbq_2_', camera_topic: '/camera2/camera2_resize', camera_id: 0, image_width: 1224, image_height: 1024}"
```
播放定位bag（此bag 应是多个相机静止状态下录制，与base相机应是同一个bag）
此时，输出的relative_pose 应该是 该相机到base相机的pose（4x4 矩阵）


