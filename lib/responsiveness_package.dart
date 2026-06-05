import 'package:daily_practice/dp_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResponsivenessPackage extends StatelessWidget {
  const ResponsivenessPackage({super.key});

  @override
  Widget build(BuildContext context) {
    final Orientation orientation = MediaQuery.of(context).orientation; // this is used to get the orientation of the screen. it is an Orientation enum that contains two values: portrait and landscape. it is used to make the app responsive by using the orientation of the screen to set the size of the widgets. it is used to check if the orientation of the screen is portrait or landscape by using the orientation variable. it returns true if the orientation of the screen is portrait, otherwise it returns false.
    return Scaffold(
      appBar: DpAppbar(title: 'Responsiveness Package'),
      body: SingleChildScrollView(
        scrollDirection: orientation == Orientation.landscape ? Axis.horizontal : Axis.vertical,
        child: Center(
          child: orientation == Orientation.landscape ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              Container(
                height: 200.r,
                width: 100.r,
                color: Colors.teal
              ),

              SizedBox(height: 20.h), // this is used to add some space between the container and the button. it is a double that contains the height of the space. it is passed as a parameter to the SizedBox constructor.
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 0.5.sw,
                    height: 200.h,
                    color: Colors.purple,
                    child: Text(
                      'My actual width ${0.5.sw} and height ${200.h}',
                      style: TextStyle(
                        fontSize: 20.sp,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Container(
                constraints: BoxConstraints(
                  maxWidth: 150, // this is used to set the maximum width of the container. it is a double that contains the maximum width of the container. it is passed as a parameter to the BoxConstraints constructor.
                  maxHeight: 150, // this is used to set the maximum height of the container. it is a double that contains the maximum height of the container. it is passed as a parameter to the BoxConstraints constructor.
                ).hw,
                color: Colors.orange,
                child: Text(
                  'Hello World',
                  style: TextStyle(
                    fontSize: 20.sp, // this is used to set the font size of the text. it is a double that contains the font size of the text. it is passed as a parameter to the TextStyle constructor.
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              SizedBox(height: 20.h), // this is used to add some space between the container and the button. it is a double that contains the height of the space. it is passed as a parameter to the SizedBox constructor.
              //without using flutter_screenutil package, the container will not be responsive and it will not adjust its size according to the screen size. it will have a fixed size of 200x200 pixels regardless of the screen size. it will look good on a small screen but it will look small on a large screen.
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
        
              SizedBox(height: 20),
        
              Text(
                'This is a text without using flutter_screenutil package',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.green,
                ),
                textAlign: TextAlign.center,
              ),
        
              SizedBox(height: 20),
        
              //with using flutter_screenutil package, the container will be responsive and it will adjust its size according to the screen size. it will have a size of 200x200 pixels on a small screen and it will have a size of 400x400 pixels on a large screen. it will look good on both small and large screens.
        
              Container(
                height: 200.h,
                width: 200.w,
                color: Colors.blue,
              ),
        
              SizedBox(height: 20.h),
              Text(
                'This is a responsive text with flutter_screenutil package',
                style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.green,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ) : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              Container(
                height: 200.r,
                width: 100.r,
                color: Colors.teal
              ),

              SizedBox(height: 20.h), // this is used to add some space between the container and the button. it is a double that contains the height of the space. it is passed as a parameter to the SizedBox constructor.
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 0.5.sw,
                    height: 200.h,
                    color: Colors.purple,
                    child: Text(
                      'My actual width ${0.5.sw} and height ${200.h}',
                      style: TextStyle(
                        fontSize: 20.sp,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Container(
                constraints: BoxConstraints(
                  maxWidth: 150, // this is used to set the maximum width of the container. it is a double that contains the maximum width of the container. it is passed as a parameter to the BoxConstraints constructor.
                  maxHeight: 150, // this is used to set the maximum height of the container. it is a double that contains the maximum height of the container. it is passed as a parameter to the BoxConstraints constructor.
                ).hw,
                color: Colors.orange,
                child: Text(
                  'Hello World',
                  style: TextStyle(
                    fontSize: 20.sp, // this is used to set the font size of the text. it is a double that contains the font size of the text. it is passed as a parameter to the TextStyle constructor.
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              SizedBox(height: 20.h), // this is used to add some space between the container and the button. it is a double that contains the height of the space. it is passed as a parameter to the SizedBox constructor.
              
              //without using flutter_screenutil package, the container will not be responsive and it will not adjust its size according to the screen size. it will have a fixed size of 200x200 pixels regardless of the screen size. it will look good on a small screen but it will look small on a large screen.
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
        
              SizedBox(height: 20),
        
              Text(
                'This is a text without using flutter_screenutil package',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.green,
                ),
                textAlign: TextAlign.center,
              ),
        
              SizedBox(height: 20),
        
              //with using flutter_screenutil package, the container will be responsive and it will adjust its size according to the screen size. it will have a size of 200x200 pixels on a small screen and it will have a size of 400x400 pixels on a large screen. it will look good on both small and large screens.
        
              Container(
                height: 200.h,
                width: 200.w,
                color: Colors.blue,
              ),
        
              SizedBox(height: 20.h),
              Text(
                'This is a responsive text with flutter_screenutil package',
                style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.green,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}