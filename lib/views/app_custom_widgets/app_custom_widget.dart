import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../models/app_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../models/app_custom_icon.dart';
import '../custom_shapes/coupan_continer_shape.dart';
import 'drawer_drawer_screens/cupon_more_info_screen.dart';

class AppCustomWidget {

 static helpTextWidget({required String title}){
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: Text('$title'),),
        Expanded(child: Icon(Icons.arrow_forward_ios,color: AppColors.appgeryColor,))
      ],
    );
  }


  static helpCustomContainer({required String title, Image? image1,
    required Image image2,required int index,}) {
    return Container(
      padding: EdgeInsets.only(left: 30.sp,top: 5.sp),
      height: 189.h,
      width: 369.w,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.12),
            offset: Offset(0, 3.0),
            blurRadius: 21.0,
          ),
        ],
        borderRadius: BorderRadius.circular(10.r),
        color: AppColors.whiteColor,
      ),
      child: Column(
        children: [
          Expanded(
              child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '$title',
              style: GoogleFonts.roboto(
                color: AppColors.blckColor,
                fontSize: 16.sp,
              ),
            ),
          )),
          Expanded(
              flex: index==1?2:3,
              child: Row(
                children: [
                 index==1?Expanded(
                    child:Align(
                     alignment:Alignment.center,
                      child:image1,
                  ),):SizedBox(width: 0,),
                 Expanded(
                   flex: index==1?1:2,
                    child: Align(
                        alignment: Alignment.center,
                        child: image2),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        margin: EdgeInsets.only(right: 5.sp,bottom: 5.sp),
                        height: 20.h,
                        width: 100.w,
                        color: AppColors.whiteColor,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Text(
                                'See more',
                                style: GoogleFonts.roboto(
                                  color: AppColors.appAmber,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(right: 6.sp,left: 6.sp),
                                height: 20.h,
                                width: 20.w,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(3.r),
                                 color: AppColors.appAmber,
                               ),
                                child: Center(child: Icon(Icons.arrow_forward_ios,color: AppColors.whiteColor,size: 18.sp,)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }

  static dashboardContainer(
      {required String title,
      required String text,
      required IconData icon,
      required String percant,
      required IconData arrow,
      required Color color}) {
    return Container(
      padding: EdgeInsets.only(left: 15.sp, right: 15.sp),
      height: 150.h,
      width: 371.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: AppColors.whiteColor,
      ),
      child: Column(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                '$title',
                style: GoogleFonts.poppins(
                  fontSize: 16.sp,
                  color: AppColors.Textfieldcolor,
                ),
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    '$text',
                    style: GoogleFonts.poppins(
                      fontSize: 28.sp,
                      color: AppColors.blckColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: 62.h,
                      width: 62.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff6093F2),
                      ),
                      child: Icon(
                        icon,
                        color: Color(0xff0058FF),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    '$percant%',
                    style: GoogleFonts.poppins(
                      color: color,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        arrow,
                        color: color,
                      )),
                ),
                Expanded(
                    flex: 7,
                    child: Text(
                      'than last year',
                      style: TextStyle(
                        color: AppColors.Textfieldcolor,
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }

  static customContainer({required FaIcon icon, required String title}) {
    return Container(
      margin: EdgeInsets.only(left: 5.sp),
      height: 48.h,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.11),
            offset: Offset(0, 3.0),
            blurRadius: 12.0,
          ),
        ],
        color: AppColors.whiteColor,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Align(alignment: Alignment.center, child: icon),
          ),
          Expanded(
            flex: 2,
            child: Text(title),
          ),
        ],
      ),
    );
  }

  static customButton(Text text, Color color, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 10.sp),
        height: 56.h,
        width: 338.w,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(30.r),
            border: Border.all(color: AppColors.WidgetColor, width: 2.0)),
        child: Center(child: text),
      ),
    );
  }

  static cuoponCustomCntainer(BuildContext context) {
    return Container(
      height: 121.h,
      width: 414.w,
      color: Colors.grey.shade200,
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Column(
                children: [
                  Expanded(
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'Compous Container',
                          style: TextStyle(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.bold,
                            color: AppColors.blckColor,
                          ),
                        )),
                  ),
                  Expanded(
                      child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin:
                          EdgeInsets.only(left: 15.sp, right: 30.sp, top: 5.sp),
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
                        alignment: Alignment.bottomCenter,
                        child: Text('08 Aug 2021, 15:30')),
                  ),
                ],
              )),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 200.h,
                    width: 403.w,
                    child: Stack(
                      children: [
                        Positioned(
                          top: -130,
                          right: -5,
                          left: -1,
                          child: CustomPaint(
                            size:
                                Size(100, (200 * 0.458128078817734).toDouble()),
                            //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                            painter: RPSCustomPainter(),
                          ),
                        ),
                        Positioned(
                          top: 10.sp,
                          left: 80,
                          child: Icon(
                            AppCustomIcon.w_icon,
                            color: AppColors.whiteColor,
                            size: 30.sp,
                          ),
                        ),
                        Positioned(
                          top: 10.sp,
                          left: 120,
                          child: Text(
                            '250',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 27.sp,
                              color: AppColors.whiteColor,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return MoreInfoScreen();
                          },
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 40.sp),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'More info',
                                style:
                                    TextStyle(color: AppColors.Textfieldcolor),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Icon(
                                Icons.arrow_forward_ios_sharp,
                                color: AppColors.Textfieldcolor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
