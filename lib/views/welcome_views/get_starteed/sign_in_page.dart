import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wastly/controlrs/textcontrolers/page_view_controler.dart';
import 'package:wastly/models/app_custom_icon.dart';
import 'package:wastly/views/app_custom_widgets/app_custom_widget.dart';
import 'package:wastly/views/app_custom_widgets/custom_textfield.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wastly/views/welcome_views/get_starteed/welcome_get_started.dart';
import '../../../models/app_colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bottom_navigation_screens/bottom_navigation.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1.sh,
      width: 1.sw,
      child: ListView(
          padding: EdgeInsets.only(left: 36.sp, right: 36.sp),
          children: [
            SizedBox(
              height: 40.h,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Login in your account',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.sp,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 10.sp),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Icon(
                        Icons.rectangle_rounded,
                        color: AppColors.WidgetColor,
                        size: 10,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomTextField.customTextField(
                hint: 'E-Mail',
                icon: Icon(
                  AppCustomIcon.email,
                  size: 20.sp,
                  color: AppColors.Textfieldcolor,
                ),
                obscure: false),
            SizedBox(
              height: 20.h,
            ),
            CustomTextField.customTextField(
              hint: 'Password',
              icon: Icon(
                AppCustomIcon.lock,
                size: 25.sp,
                color: AppColors.Textfieldcolor,
              ),
              obscure: true,
              prefixico: Icon(
                Icons.remove_red_eye,
                color: AppColors.Textfieldcolor,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                'Forget password ?',
                style: TextStyle(
                  fontSize: 13.sp,
                  color: AppColors.WidgetColor,
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            AppCustomWidget.customButton(Text('Login'), AppColors.WidgetColor, () {
             Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
               return BottomNavigationPages();
             }));
            }),
            SizedBox(
              height: 30.h,
            ),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    color: AppColors.blckColor,
                  ),
                ),
                Expanded(
                  child: Text(
                    ' or connect with ',
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: AppColors.blckColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: AppCustomWidget.customContainer(title: 'Google',icon: FaIcon(FontAwesomeIcons.google,color: Colors.blue,)),
                ),
                Expanded(
                  flex: 1,
                  child: AppCustomWidget.customContainer(title: 'Apple',icon: FaIcon(FontAwesomeIcons.apple)),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: AppCustomWidget.customContainer(title: 'Twiter',icon: FaIcon(FontAwesomeIcons.twitter,color: Colors.blue,)),
                ),
                Expanded(
                  flex: 1,
                  child: AppCustomWidget.customContainer(title: 'Facebook',icon: FaIcon(FontAwesomeIcons.facebook)),
                ),
              ],
            )
          ]),
    );
  }
}
