cmake_minimum_required(VERSION 2.8)
project( OpencvApp )
find_package( OpenCV REQUIRED )
include_directories( ${OpenCV_INCLUDE_DIRS} )
add_executable( Landmark Landmark.cpp)
add_executable( LandmarkSmoothing LandmarkSmoothing.cpp SmoothingCenters.cpp)
add_executable( SplitsVideos SplitsVideos.cpp)
target_link_libraries( Landmark ${OpenCV_LIBS} )
target_link_libraries( LandmarkSmoothing ${OpenCV_LIBS} )
target_link_libraries( SplitsVideos ${OpenCV_LIBS} )
