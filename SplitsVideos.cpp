#include <opencv2/core.hpp>     
#include <opencv2/videoio.hpp> 
#include <opencv2/opencv.hpp>

#include <sstream>
#include <iomanip>
#include <iostream> 
#include <string>

using namespace cv;
using namespace std;

string nameImagesFiles(int frame_num, int total_frames);
int getNumLength(int num);

int main(int argc, char** argv)
{
	if (argc != 2)
	{
		cout << "Not enough parameters" 
				"paramter includes source file name" << endl;
		return -1;
	}

	// load files and models
	const string source = argv[1];           	 // the source file name
	VideoCapture input_video(source);             // Open input
	if (!input_video.isOpened())
	{
		cout << "Could not open the input video: " << source << endl;
		return -1;
	}

    // count the number of frames
    int total_frames = (int) input_video.get(CAP_PROP_FRAME_COUNT);
    int length = getNumLength(total_frames);
    int frame_num = 1;

	// Read the video stream
	Mat src;
	for (;;)
	{
		input_video >> src;              
		if (src.empty()) break;        

        imwrite(nameImagesFiles(frame_num++, length), src);

	}


	return 0;
}

int getNumLength(int num)
{
    int length = 0;
    do {
        ++ length;
        num /= 10;
    } while (num);

    return length;
}

string nameImagesFiles(int frame_num, int length)
{
    stringstream ss;
    ss << std::setw(length) << std::setfill('0') << frame_num;
    return "frame_" + ss.str() + ".jpg";
}