import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../models/app_colors.dart';
import '../../../models/app_custom_icon.dart';
import '../app_custom_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MoreInfoScreen extends StatefulWidget {
  const MoreInfoScreen({Key? key}) : super(key: key);

  @override
  State<MoreInfoScreen> createState() => _MoreInfoScreenState();
}

class _MoreInfoScreenState extends State<MoreInfoScreen> {
  PageController controller = PageController();

  var index=0;

  final List ImageList = [
    'assets/images/slider1.png',
    'assets/images/slider2.png',
    'assets/images/slider3.png',
    'assets/images/slider4.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          Container(
            height: 105.h,
            width: 415.w,
            color: AppColors.WidgetColor,
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 45.h,
                    child: VerticalDivider(
                      color: AppColors.whiteColor,
                      thickness: 2.5,
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Text(
                    'Coupon #345123',
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 19.sp,
                    ),
                  ),
                ),
                Expanded(
                    child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          AppCustomIcon.close,
                          color: AppColors.whiteColor,
                          size: 20.sp,
                        )))
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Container(
            margin: EdgeInsets.only(),
            height: 121.h,
            width: 414.w,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            'Compous Container',
                            style: TextStyle(
                              color: AppColors.blckColor,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                          child: Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          margin: EdgeInsets.only(
                            left: 15.sp,
                            right: 30.sp,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: AppColors.WidgetColor,
                          ),
                          child: Center(
                            child: Text(
                              'napravisisam.com,',
                              style: TextStyle(
                                color: AppColors.whiteColor,
                              ),
                            ),
                          ),
                        ),
                      )),
                      Expanded(
                        child: Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                                margin:
                                    EdgeInsets.only(right: 30.sp, top: 5.sp),
                                child: Text('08 Aug 2021, 15:30'))),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 20.sp, right: 20.sp),
                    height: 98.h,
                    width: 152.w,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(76.0, 44.0)),
                      color: const Color(0xFF4D8D6E),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          offset: Offset(0, 3.0),
                          blurRadius: 11.0,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              margin: EdgeInsets.only(right: 15.sp),
                              child: Icon(
                                AppCustomIcon.w_icon,
                                color: AppColors.whiteColor,
                                size: 30.sp,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: RichText(
                            text: TextSpan(
                                text: '250\n',
                                style: TextStyle(
                                  fontSize: 27.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                                children: [
                                  TextSpan(
                                      text: '-50%',
                                      style: TextStyle(
                                        fontSize: 22.sp,
                                      ))
                                ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20.sp, right: 20.sp),
            height: 261.h,
            width: 361.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              color: AppColors.whiteColor,
            ),
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Align(
                      alignment: Alignment.center,
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Use promo code in the end\nof your checkout',
                            style: TextStyle(
                              fontSize: 18.sp,
                            ),
                          ))),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 100.sp,
                      right: 100.sp,
                    ),
                    height: 44.h,
                    width: 300.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Color(0xffCDE3D8),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            margin: EdgeInsets.only(left: 0.sp),
                            height: 44.h,
                            alignment: Alignment.center,
                            child: Text(
                              'B45U23D',
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffCDE3D8),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.only(right: 0.sp),
                            height: 55.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.WidgetColor,
                            ),
                            child: Center(child: Text('Copy')),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                            'or download print file & use it in local store'))),
                Expanded(
                  flex: 2,
                  child: AppCustomWidget.customButton(
                      Text(
                        'Download',
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 17.sp,
                        ),
                      ),
                      AppColors.WidgetColor,
                      () {}),
                ),
                Spacer(),
              ],
            ),
          ),
          SizedBox(
            height: 45.h,
          ),
          Container(
            margin: EdgeInsets.only(left: 20.sp),
            child: Text(
              'There are many variations of passages of Lorem Ipsum available, '
              'but the majority have suffered alteration in some form,'
              ' by injected humour, or randomised words which don\'t look even slightl',
              style: GoogleFonts.roboto(
                color: Color(0xff6A6A6A),
              ),
            ),
          ),
          SizedBox(
            height: 55.h,
          ),
          Container(
            padding: EdgeInsets.only(left: 10.sp,right: 10.sp,bottom: 10.sp),
            height: 196.h,
            width: 413.w,
            color: AppColors.whiteColor,
            child: Row(
              children: [
                Expanded(
                    child: InkWell(
                      onTap: (){
                        controller.previousPage(duration: (Duration(microseconds: 33)), curve:  Curves.easeIn);
                      },
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(
                  Icons.arrow_back_ios_new,
                  color: AppColors.appgeryColor,
                ),
                      ),
                    )),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                          flex: 1,
                          child: PageView.builder(
                            controller: controller,
                            itemCount: 4,
                            itemBuilder: (BuildContext context, int index) {
                            return Image.asset('${ImageList[index]}');
                          },)),
                      Expanded(
                          child: SmoothPageIndicator(
                              controller: controller,  // PageController
                              count:  4,
                              effect:  WormEffect(
                                activeDotColor: AppColors.WidgetColor,
                                dotColor: AppColors.appgeryColor,
                                radius: 10.sp,
                              ),  // your preferred effect
                              onDotClicked: (index){
                              }
                          )  ),
                    ],
                  ),
                ),
                Expanded(
                    child: InkWell(
                      onTap: (){
                        controller.nextPage(duration: (Duration(microseconds: 33)), curve:  Curves.easeIn);
                      },
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.appgeryColor,
                ),
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
