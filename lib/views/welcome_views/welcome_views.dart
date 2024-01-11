import 'package:flutter/material.dart';
import 'package:wastly/views/app_custom_widgets/app_custom_widget.dart';
import 'package:wastly/views/welcome_views/get_starteed/welcome_get_started.dart';

import '../../models/app_colors.dart';
import '../custom_shapes/first_custom_shae.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 700.h,
          width: 500.w,
          child: Column(
            children: [
              Expanded(
                flex: 9,
                child: Stack(
                  children: [
                    Positioned(
                      top: -30.sp,
                      left: 15.sp,
                      child: CustomPaint(
                        size: Size(
                            717.68, (699.85 * 1.0712140467113125).toDouble()),
                        //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                        painter: RPSCustomPainter(),
                      ),
                    ),
                    Positioned(
                      top: 0.sp,
                      left: 0.sp,
                      right: 0.sp,
                      child: SizedBox(
                        height: 322.h,
                        width: MediaQuery.of(context).size.width,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 70.sp,
                              left: 20.sp,
                              child: Text(
                                'Welcome',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24.sp,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 90.sp,
                              left: 20.sp,
                              child: Text(
                                'wasty',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32.sp,
                                ),
                              ),
                            ),
                            Positioned(
                                top: 115.sp,
                                left: 160.sp,
                                child: Icon(
                                  Icons.rectangle_rounded,
                                  color: Colors.white,
                                  size: 10.sp,
                                )),
                            Positioned(
                              top: 30.sp,
                              left: -80,
                              child: SizedBox(
                                width: 700.sp,
                                height: 322.61.h,
                                child: Image.asset('assets/images/path.png'),
                              ),
                            ),
                            Positioned(
                              top: 240.sp,
                              child: SizedBox(
                                height: 120.h,
                                width: 430.w,
                                child: Divider(
                                  thickness: 1.6.sp,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 130.sp,
                      left: 0.sp,
                      right: -20,
                      child: Container(
                          width: 623.w,
                          height: 213.43.h,
                          child: Image.asset('assets/images/person.png')),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                      return SignInScreen();
                    }));
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10.sp),
                    height: 56.h,
                    width: 338.w,
                    decoration: BoxDecoration(
                      color: AppColors.WidgetColor,
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    child: Center(child: Text('Get Started')),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: AppCustomWidget.customButton(Text('Sign in'),Colors.white,(){})
              ),
            ],
          ),
        ),
      ),
    );
  }
}
