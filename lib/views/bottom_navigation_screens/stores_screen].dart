import 'package:flutter/material.dart';
import 'package:wastly/models/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wastly/views/bottom_navigation_screens/store_custom_screen/custom_widgets.dart';

import '../../models/app_custom_icon.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({Key? key}) : super(key: key);

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.only(left: 16.sp, right: 16.sp, top: 10.sp),
      children: [
        Container(
          height: 232.h,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Stack(
            children: [
              Container(
                  padding: EdgeInsets.only(
                    top: 10.sp,
                  ),
                  height: 232.h,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'assets/images/storepic3.png',
                    fit: BoxFit.cover,
                  )),
              SizedBox(
                height: 232.h,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'assets/images/blackcolor.png',
                  height: 10.sp,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                  top: 20.sp,
                  right: 10.sp,
                  child: Container(
                    padding: EdgeInsets.only(top: 5.sp,bottom: 5.sp),
                height: 88.h,
                width: 87.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors.WidgetColor,
                ),
                child: Column(
                  children: [
                    Expanded(child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        children: [
                          Expanded(child: Icon(AppCustomIcon.dollor_icon,color: AppColors.whiteColor,size: 18.sp,),),
                          Expanded(
                              flex: 2,
                              child: Text('280',style: TextStyle(
                            color: AppColors.whiteColor,
                            fontSize: 25.sp,
                          ),))
                        ],
                      ),
                    ),),
                    Divider(
                      color: AppColors.whiteColor,
                    ),
                    Expanded(child: Align(
                      alignment: Alignment.topCenter,
                      child: Text('50%',style: TextStyle(
                        color: AppColors.whiteColor,
                        fontSize: 25.sp,
                      ),),
                    ))
                  ],
                ),
              ),),
              Positioned(
                  bottom: 20.sp,
                  left: 20.sp,
                  child: Text('Container for\ncomposting',style: TextStyle(
                color: AppColors.whiteColor,
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
              ),),),
              Positioned(
                  bottom: 25.sp,
                  right: 10.sp,
                  child: Text('napravisisam.com',style: TextStyle(
                color: AppColors.whiteColor,
                fontSize: 10.sp,
              ),),),
            ],
          ),
        ),
        SizedBox(
          height: 17.h,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              getContainer(color: AppColors.amberColor,width: 91.w,text: Text('all',style: TextStyle(
                color: AppColors.whiteColor,
              ),),),
              SizedBox(width: 15.sp,),
              getContainer(color: AppColors.whiteColor,width: 91.w,text: Text('tools',style: TextStyle(
                color: AppColors.amberColor,
              ),),),
              SizedBox(width: 15.sp,),
              getContainer(color: AppColors.whiteColor,width:129.w,text: Text('allowances',style: TextStyle(
                color: AppColors.amberColor,
              ),),),
              SizedBox(width: 15.sp,),
              getContainer(color: AppColors.whiteColor,width:86.w,text: Text('garden',style: TextStyle(
                color: AppColors.amberColor,
              ),),),
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
      StoreCustomWidget.storeCustomContainer(context),
        SizedBox(
          height: 10.h,
        ),
        StoreCustomWidget.storeCustomContainer(context),
        SizedBox(
          height: 10.h,
        ),
        StoreCustomWidget.storeCustomContainer(context),
        SizedBox(
          height: 10.h,
        ),
        StoreCustomWidget.storeCustomContainer(context),
      ],
    ));
  }
  getContainer({required Color color ,  required double width, required Text text}){
    return Container(
      height: 56.h,
      width: width,
      decoration: BoxDecoration(
        color: color,
        border:  Border.all(color: AppColors.appAmber)
      ),
      child:Center(child: text),
    );
  }
}
