import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wastly/models/app_custom_icon.dart';

import '../../models/app_colors.dart';
import '../app_custom_widgets/botton_item_custom_widget/blog_custom_widget.dart';

class BlogScreen extends StatefulWidget {
  const BlogScreen({Key? key}) : super(key: key);

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 260.h,
            width: 400.w,
            child: Stack(
              children: [
                Positioned(
                  top: 10.sp,
                  child: Container(
                    height: 249.h,
                    width: 414.w,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                    ),
                    child: Image.asset(
                      'assets/images/contpic.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 105,
                  child: Image.asset('assets/images/blackcolor.png'),
                ),
                Positioned(
                  top: 20.sp,
                  right: 10.sp,
                  child: Container(
                    height: 24.h,
                    width: 88.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: Colors.grey,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Icon(
                            Icons.alarm_add_rounded,
                            color: AppColors.whiteColor,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            '8 hours',
                            style: TextStyle(
                              color: AppColors.whiteColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 90.sp,
                  left: 24.sp,
                  child: Container(
                    height: 24.h,
                    width: 88.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: AppColors.whiteColor,
                    ),
                    child: Center(
                      child: Text('sponsored'),
                    ),
                  ),
                ),
                Positioned(
                    bottom: 30.sp,
                    left: 24.sp,
                    child: Text('For or against the separate\nwaste collection',style: GoogleFonts.roboto(
                      color: AppColors.whiteColor,
                      fontSize: 21.sp,
                    ),),),
                Positioned(
                    bottom: 50.sp,
                    right: 20.sp,
                    child: Icon(Icons.remove_red_eye,color: AppColors.whiteColor,),),
                Positioned(
                    bottom: 30.sp,
                    right: 20.sp,
                    child: Text('609',style: TextStyle(
                  color: AppColors.whiteColor,
                ),))
              ],
            ),
          ),
          Container(
            height: 49.h,
            width: 414.w,
            child: Row(
              children: [
                Expanded(
                  flex:1,
                  child: Align(
                      alignment: Alignment.center,
                      child: Text('Newest')),),
                Expanded(
                    flex: 3,
                    child: Divider(
                      thickness: 1.0,
                      color: AppColors.blckColor,
                    )),
                Expanded(child: Container(
                  margin: EdgeInsets.only(left: 20.sp),
                  height: 48.h,
                  color: AppColors.WidgetColor,
                  child: Icon(AppCustomIcon.filter,color: AppColors.whiteColor,),
                ),),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          BlogCustomWidget.getBlogCustomContainer(context),
          SizedBox(
            height: 10.h,
          ),
          BlogCustomWidget.getBlogCustomContainer(context),
          SizedBox(
            height: 10.h,
          ),
          BlogCustomWidget.getBlogCustomContainer(context),
          SizedBox(
            height: 10.h,
          ),
          BlogCustomWidget.getBlogCustomContainer(context),
          SizedBox(
            height: 10.h,
          ),
          BlogCustomWidget.getBlogCustomContainer(context),
          SizedBox(
            height: 10.h,
          ),
          BlogCustomWidget.getBlogCustomContainer(context),
          SizedBox(
            height: 10.h,
          ),
          BlogCustomWidget.getBlogCustomContainer(context),
          SizedBox(
            height: 10.h,
          ),
          BlogCustomWidget.getBlogCustomContainer(context),
        ],
      ),
    );
  }
}
