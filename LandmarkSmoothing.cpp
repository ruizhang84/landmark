#include <opencv2/core.hpp>     
#include <opencv2/videoio.hpp> 

#include <opencv2/objdetect.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/imgproc.hpp>

#include <opencv2/face.hpp>
#include <iostream> 
#include <string>
#include "SmoothingCenters.h"

using namespace cv;
using namespace std;
using namespace cv::face;

void detectAndSave(Mat frame, CenterFrame & c_frame, CascadeClassifier cascade_detector, Ptr<Facemark> facemark, VideoWriter output_video);

int main(int argc, char** argv)
{
	if (argc != 4)
	{
		cout << "Not enough parameters, " 
				"paramter as source file name,"
				"cascade file name, and trained model (lbfmodel.yaml)" << endl;
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

	const string cascade_filename = argv[2];			//HAAR_CASCADE_PATH
	CascadeClassifier face_detector;
	if (!face_detector.load(cascade_filename)) 
	{ 
		cout << "could not load face cascade: " << cascade_filename << endl; 
		return -1; 
	};


	const string facemark_LBF_filename = argv[3];		// the filename of a trained model
	Ptr<Facemark> facemark = FacemarkLBF::create();
	facemark->loadModel(facemark_LBF_filename);

	// prepare write out
    string::size_type pAt = source.find_last_of('.');               
    const string NAME = source.substr(0, pAt)  + "_smoothing.avi";   // Form the new name to write
    Size S = Size((int) input_video.get(CAP_PROP_FRAME_WIDTH),  
                  (int) input_video.get(CAP_PROP_FRAME_HEIGHT));
    VideoWriter output_video;              
	output_video.open(NAME, input_video.get(CAP_PROP_FOURCC), input_video.get(CAP_PROP_FPS), S, true);
	
	if (!output_video.isOpened())
    {
        cout  << "Could not open the output video for write: " << source << endl;
        return -1;
    }


	// Read the video stream
	Mat src, res;
	// const string window_name = "Face detection";
	CenterFrame c_frame;

	for (;;)
	{
		input_video >> src;              
		if (src.empty()) break;        

		detectAndSave(src, c_frame, face_detector, facemark, output_video);

		//outputVideo.write(res); //save or
		//outputVideo << res;
	}


	return 0;
}


void detectAndSave(Mat frame, CenterFrame & c_frame, CascadeClassifier cascade_detector, Ptr<Facemark> facemark, VideoWriter output_video)
{
	vector<Rect> faces;
	
	Mat frame_gray;
	cvtColor(frame, frame_gray, COLOR_BGR2GRAY);
	equalizeHist(frame_gray, frame_gray);
	// Detect faces
	cascade_detector.detectMultiScale(frame_gray, faces, 1.05, 3, 0 | CASCADE_SCALE_IMAGE, Size(20, 20));
	
	if (faces.size() != 0){
		// Draw the detected face
		vector<Rect> faces_collect;
		for (size_t i = 0; i < faces.size(); i++)
		{
			Point p1(faces[i].x, faces[i].y);
			Point p2(faces[i].x + faces[i].width, faces[i].y + faces[i].height);

			if (! c_frame.IsValidROI(p1, p2)) continue;
			Rect region_of_interest = c_frame.GetROI(p1, p2, frame.cols, frame.rows);
			faces_collect.push_back(region_of_interest);

			Point p3(region_of_interest.x, region_of_interest.y);
			Point p4(region_of_interest.x + region_of_interest.width, region_of_interest.y + region_of_interest.height);
			rectangle(frame, p3, p4, Scalar(255, 0, 255), 2);
		}

		vector<vector<Point2f> > landmarks;
		if (facemark->fit(frame, faces_collect, landmarks)) {
			// Draw the detected landmarks
			drawFacemarks(frame, landmarks[0], cv::Scalar(0, 0, 255));
		}

	}

	//-- Show what you got
	output_video << frame;
	// imshow(window_name, frame);
	// waitKey(1);
}
