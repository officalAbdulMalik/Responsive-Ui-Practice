import 'package:flutter/material.dart';
import 'package:wastly/controlrs/textcontrolers/page_view_controler.dart';
import 'package:wastly/models/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../models/app_custom_icon.dart';
class RequestScreen extends StatefulWidget {
  const RequestScreen({Key? key}) : super(key: key);

  @override
  State<RequestScreen> createState() => _RequestScreenState();
}

class _RequestScreenState extends State<RequestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xffF5F5F5),
      body:Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(
                left: 22.sp,
              ),
              child: Text('Select contact type',style: TextStyle(
              color: AppColors.blckColor,
              fontSize: 25.sp,
              fontWeight: FontWeight.bold,
          ),),
            ),),
          Expanded(
            flex: 4,
            child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                getContiner(text: 'Contact our customer support', title: 'Live Call',icon: Icons.call,),
                getContiner(text: 'Send message to our\nsupport team', title: 'Message Us',icon: Icons.mail,),
               getContiner(text: 'Attach picture and send signal for irregularity', title: 'Signal Report',icon: Icons.report)
              ],
            ),
          ),),
          Spacer(flex: 1,),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.only(left: 20.sp),
            height: 231.h,
            width: 414.w,
            color: AppColors.WidgetColor,
              child:Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Align(
                    alignment:Alignment.bottomLeft,
                    child: Text('Reporting',style: TextStyle(
                      fontSize: 25.sp,
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),),
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text('To submit a signal from our platform you need to be a registered user.',style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 16.sp,
                  ),),
                    ),),
                  Expanded(child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text('When filling out the contact form, it is necessary to indicate your preferred way of contacting you.',
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 16.sp,
                    ),),
                  )),
                  Spacer(),
                ],
              ),
          ),
          ),
        ],
      )
    );
  }
  getContiner({required String text, required String title,IconData? icon,}){
    return InkWell(
      onTap: (){
        PageViewControler.controler.jumpToPage(5);
      },
      child: Container(
        margin: EdgeInsets.only(left: 10.sp,right: 10.sp),
        height: 279.h,
        width: 210.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            // color: AppColors.WidgetColor,
            border: Border.all(color: AppColors.WidgetColor,width: 2.0.w)
        ),
        child: Column(
          children: [
            Expanded(
              flex:2,
              child: Container(
                height: 100.53.h,
                width: 101.54.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.WidgetColor,
                  border: Border.all(color: Colors.green.shade900,width: 3.0),
                ),
                child: Icon(icon,color: AppColors.whiteColor,size: 50.sp,),
              ),),
            Expanded(child: Text('$title',style:TextStyle(
              color: AppColors.WidgetColor,
              fontWeight: FontWeight.bold,
              fontSize: 23.sp,
            ),),),
            Expanded(child: Container(
              height: 70.h,
              width: 208.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                color: AppColors.WidgetColor,
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  '$text',textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ),),
          ],
        ),
      ),
    );
  }
}
