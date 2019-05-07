#ifndef SMOOTHING_FUNCTIONS_H_
#define SMOOTHING_FUNCTIONS_H_

#include <deque>
#include <numeric> 
#include <iostream> 
#include <opencv2/core.hpp>  

class CenterFrame
{
public:
    cv::Rect GetROI(cv::Point p1, cv::Point p2, int width, int height);
    bool IsValidROI(cv::Point p1, cv::Point p2);
private:
    std::deque<cv::Point> centers;
    void UpdateCenters(cv::Point p1, cv::Point p2);
    cv::Rect GetROIByCenters(cv::Point center, cv::Point p1, cv::Point p2, int width, int height);
    cv::Point GetCentersAvg();
};

#endif