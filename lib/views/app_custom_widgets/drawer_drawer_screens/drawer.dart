import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wastly/views/app_custom_widgets/drawer_drawer_screens/profile_screen.dart';
import '../../../models/app_colors.dart';
import '../../../models/app_custom_icon.dart';
import 'dart:math'as math ;

import 'coupons_screen.dart';
import 'dashboard_screen.dart';
import 'help_center_screen.dart';
class CustomDrawer {

  customDrawer (BuildContext context) {
      return Container(
        alignment: Alignment.center,
        width: 243.w,
        height: 896.h,
        color: AppColors.whiteColor,
        child: ListView(
          children: [
            Container(
              height: 111.h,
              width: 243.w,
              decoration: BoxDecoration(
                color: AppColors.WidgetColor,
              ),
              child: Container(
                padding: EdgeInsets.only(top: 10.sp, left: 10.sp, right: 10.sp),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                'Katrin Vasileva',
                                style: TextStyle(
                                  fontSize: 21.sp,
                                  color: AppColors.whiteColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                'New York City, NY',
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  color: AppColors.whiteColor,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          margin: EdgeInsets.only(bottom: 40.sp),
                          alignment: Alignment.center,
                          child: Icon(
                            AppCustomIcon.close,
                            color: AppColors.whiteColor,
                            size: 20.sp,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                 return CouponsScreen();
                }));
              },
              child:
              caustomContainer(icon: AppCustomIcon.drom_icon, text: 'My coupons'),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
               return ProfileScreen();
                }));
              },
              child:
              caustomContainer(icon: AppCustomIcon.person, text: 'Profile'),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                  return DashBoardScreen();
                }));
              },
              child: Container(
                height: 76.h,
                decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.grey),
                    )),
                child: Row(
                  children: [
                    Expanded(
                      child: Image.asset(
                        'assets/images/dashboard.png',
                        height: 50.sp,
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: Text(
                          'Dashboard',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19.sp,
                            color: AppColors.blckColor,
                          ),
                        )),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                  return HelpCenter();
                }));
              },
              child: Container(
                height: 76.h,
                decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.grey),
                    )),
                child: Row(
                  children: [
                    Expanded(
                      child: Image.asset(
                        'assets/images/help.png',
                        height: 50.sp,
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: Text(
                          'Support Center',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19.sp,
                            color: AppColors.blckColor,
                          ),
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 150.h,
            ),
            Container(
              padding: EdgeInsets.only(left: 30.sp),
              height: 60.h,
              decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.grey),
                    bottom: BorderSide(color: Colors.grey),
                  )),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'About Us',
                  style: TextStyle(
                    color: AppColors.Textfieldcolor,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 30.sp),
              height: 60.h,
              decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.grey),
                  )),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Privacy',
                  style: TextStyle(
                    color: AppColors.Textfieldcolor,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 30.sp),
              height: 60.h,
              decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.grey),
                  )),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Terms of Use',
                  style: TextStyle(
                    color: AppColors.Textfieldcolor,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 30.sp),
              height: 60.h,
              decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.grey),
                  )),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'FAQ',
                  style: TextStyle(
                    color: AppColors.Textfieldcolor,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 30.sp),
              height: 60.h,
              decoration: BoxDecoration(
                  color: Colors.red.shade50,
                  border: Border(
                    top: BorderSide(color: Colors.grey),
                  )),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Transform.rotate(
                        angle: 180 * math.pi / 180,
                        child: Icon(
                          Icons.logout,
                          color: Colors.red.shade900,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 8,
                      child: Text(
                        'Log Out',
                        style: TextStyle(
                          color: Colors.red.shade900,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }
    caustomContainer({required IconData icon, required String text}) {
      return Container(
        height: 76.h,
        decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey),
            )),
        child: Row(
          children: [
            Expanded(
              child: Icon(
                icon,
                color: AppColors.WidgetColor,
                size: 40.sp,
              ),
            ),
            Expanded(
                flex: 2,
                child: Text(
                  '$text',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19.sp,
                    color: AppColors.blckColor,
                  ),
                )),
          ],
        ),
      );
    }
  }
