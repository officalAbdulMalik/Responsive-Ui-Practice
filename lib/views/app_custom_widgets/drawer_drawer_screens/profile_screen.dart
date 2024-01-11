import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wastly/controlrs/cubits/app_cubit/them_cubit.dart';
import 'package:wastly/models/app_colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../models/app_custom_icon.dart';
import 'package:flutter_switch/flutter_switch.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 1.sh,
        width: 1.sw,
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            SizedBox(
              height: 346.h,
              width: 526.w,
              child: Stack(
                children: [
                  Positioned(
                    top: -180.sp,
                    left: -60.sp,
                    child: Container(
                      height: 526.h,
                      width: 526.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.WidgetColor,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 50.sp,
                    left: 170,
                    child: Container(
                      height: 78.h,
                      width: 78.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.whiteColor,
                      ),
                      child: Icon(
                        AppCustomIcon.person,
                        color: AppColors.WidgetColor,
                        size: 30.sp,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 130.sp,
                    left: 150.sp,
                    child: RichText(
                      text: TextSpan(
                          text: 'Katrin Vasileva\n',
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontSize: 21.sp,
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(
                              text: '  New York City, NY',
                              style: TextStyle(
                                  color: AppColors.whiteColor, fontSize: 15.sp),
                            ),
                          ]),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 30.sp),
              child: Text(
                'Name',
                style: TextStyle(
                  color: AppColors.blckColor,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30.sp),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      'Katrin Vasileva',
                      style: TextStyle(
                        color: AppColors.blckColor,
                      ),
                    ),
                  ),
                  Expanded(
                      child: Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: AppColors.Textfieldcolor,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 30.sp),
              child: Text(
                'Username',
                style: TextStyle(
                  color: AppColors.blckColor,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30.sp),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      'Katituuu_86',
                      style: TextStyle(
                        color: AppColors.blckColor,
                      ),
                    ),
                  ),
                  Expanded(
                      child: Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: AppColors.Textfieldcolor,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 30.sp),
              child: Text(
                'Email',
                style: TextStyle(
                  color: AppColors.blckColor,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30.sp),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      'katuna@gmail.com',
                      style: TextStyle(
                        color: AppColors.blckColor,
                      ),
                    ),
                  ),
                  Expanded(
                      child: Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: AppColors.Textfieldcolor,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 30.sp),
              child: Text(
                'Bio',
                style: TextStyle(
                  color: AppColors.blckColor,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30.sp),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      'Add your bio to your profile',
                      style: TextStyle(
                        color: AppColors.blckColor,
                      ),
                    ),
                  ),
                  Expanded(
                      child: Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: AppColors.Textfieldcolor,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 20.sp,right: 20.sp),
              child: Divider(

              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              children: [
                Expanded(child:Container(
                  margin: EdgeInsets.only(left: 20.sp),
                    alignment: Alignment.topLeft,
                    child: Image.asset('assets/images/moon.png')),),
                Expanded(
                  flex: 2,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Dark mode',
                      style: TextStyle(
                        color: AppColors.blckColor,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: BlocBuilder<ThemCubit, bool>(
                    builder: (context, state) {
                      return SwitchListTile(value: state, onChanged: (value){
                        BlocProvider.of<ThemCubit>(context).getThem(them: value);
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 30.sp,right: 30.sp),
              height: 56.h,
              width: 100.w,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(30.r),
               border: Border.all(color: AppColors.WidgetColor,width: 2.0.sp),
             ),
              child: Center(child: Text('Change Password',style: TextStyle(
                color: AppColors.WidgetColor,
              ),)),
            ),
          ],
        ),
      ),
    );
  }
}
