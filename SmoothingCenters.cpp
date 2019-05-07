#include "SmoothingCenters.h"

using namespace std;
using namespace cv;

double max(double x, double y)
{
    return x > y? x : y;
}

double min(double x, double y)
{
    return x > y? y : x;
}

Rect CenterFrame::GetROI(Point p1, Point p2, int width, int height)
{
    UpdateCenters(p1, p2);
    return GetROIByCenters(GetCentersAvg(), p1, p2, width, height);
}


void CenterFrame::UpdateCenters(Point p1, Point p2)
{
    Point c = Point( (p1.x + p2.x)/2, (p1.y + p2.y)/2);
    if (centers.size() >= 12)
    {
        centers.pop_front();
    }
    centers.push_back(c);
}

Point CenterFrame::GetCentersAvg()
{
    double x = 0.0, y = 0.0;
    for(deque<Point>::iterator it = centers.begin(); it != centers.end(); it++)
    {
        x += it->x;
        y += it->y;
    }
    return Point(x/centers.size(), y/centers.size());
}

bool CenterFrame::IsValidROI(Point p1, Point p2)
{
    if (centers.size() == 0) 
    {
        return true;
    };

    Point center = GetCentersAvg();
    // center lies outside the rectangular region
    if (center.x < p1.x || center.y > p2.y || center.x > p2.x || center.y < p1.y)
    {
        return false;
    }
    return true;
}

Rect CenterFrame::GetROIByCenters(Point center, Point p1, Point p2, int width, int height)
{
    // cout << p1.x << " " << p1.y << " " << p2.x << " " << p2.y << endl;
    double c_width = min(width-center.x, max(center.x - p1.x, p2.x - center.x))*2;
    double c_height = min(height-center.y, max(center.y - p1.y, p2.y - center.y))*2;
    Rect region_of_interest = Rect(center.x - c_width/2, center.y - c_height/2, c_width, c_height);
   
    return region_of_interest;
}