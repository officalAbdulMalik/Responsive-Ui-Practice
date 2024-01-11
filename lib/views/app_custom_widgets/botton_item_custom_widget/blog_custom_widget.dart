import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wastly/models/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../bottom_navigation_screens/blogs_screen/blog_detail_screen.dart';
class BlogCustomWidget{

 static getBlogCustomContainer(BuildContext context){
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
          return BlogDetailScreen();
        }));
      },
      child: Container(
        margin: EdgeInsets.only(left: 10.sp,right: 20.sp),
        height: 128.h,
        width: 384.w,
       decoration: BoxDecoration(
         color: AppColors.whiteColor,
         boxShadow: [
           BoxShadow(
             color: Colors.black.withOpacity(0.12),
             offset: Offset(0, 3.0),
             blurRadius: 21.0,
           ),
         ],
       ),
        child: Row(
          children: [
            Expanded(child: Stack(
              children: [
                Positioned(
                    child: Image.asset('assets/images/newz.png')),
                Positioned(
                    bottom: 10.sp,
                    left: 10.sp,
                    child: Container(
                  height: 21.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    color: Colors.black45,
                  ),
                      child: Center(
                        child: Text('newz',style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 14.sp,
                        ),),
                      ),
                ),),
              ],
            ),),
            Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.only(left: 10.sp),
                  child: Column(
              children: [
                  Expanded(
                    child: Align(
                      alignment:Alignment.centerLeft,
                      child: Text('Statistics show that ..',style: GoogleFonts.roboto(
                        color: Color(0xff2C2C2C),
                        fontSize: 18.sp,
                      ),),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment:Alignment.centerLeft,
                      child: Text('Separate paper collection helps save 24,000 trees '
                          'per year Separate paper collection…',style: GoogleFonts.roboto(
                        color: Color(0xff2C2C2C),
                        fontSize: 16.sp,
                      ),),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment:Alignment.centerLeft,
                      child: Text('Source: ekopak.bg',style: GoogleFonts.roboto(
                        color: AppColors.Textfieldcolor,
                        fontSize: 15.sp,
                      ),),
                    ),
                  ),
              ],
            ),
                ))
          ],
        ),
      ),
    );
  }
}