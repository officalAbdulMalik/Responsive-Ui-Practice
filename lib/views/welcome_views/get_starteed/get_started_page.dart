import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wastly/views/app_custom_widgets/app_custom_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../controlrs/textcontrolers/texteditingcontrol.dart';
import '../../../models/app_colors.dart';
import '../../../models/app_custom_icon.dart';
import '../../app_custom_widgets/custom_textfield.dart';
import '../../bottom_navigation_screens/bottom_navigation.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

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
                flex: 3,
                child: Text(
                  'Become part of the future',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 10.sp),
                  child: Align(
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
            height: 25.h,
          ),
          CustomTextField.customTextField(
              controller: StaticControler.getstartEmailContr,
              hint: 'E-Mail',
              icon: Icon(
                AppCustomIcon.email,
                size: 20.sp,
                color: AppColors.Textfieldcolor,
              ),
              obscure: false),
          SizedBox(
            height: 10.h,
          ),
          CustomTextField.customTextField(
            controller: StaticControler.getstarPasswordContr,
            hint: '',
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
            height: 10.h,
          ),
          CustomTextField.customTextField(
            controller: StaticControler.confimPaswordContr,
            hint: 'Repeat Password',
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
            height: 15.h,
          ),
          AppCustomWidget.customButton(
            Text(
              'Join in community',
              style: TextStyle(
                color: AppColors.whiteColor,
                fontSize: 17.sp,
              ),
            ),
            AppColors.WidgetColor,
              (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                return BottomNavigationPages();
              }));
              },
          ),
          SizedBox(
            height: 15.h,
          ),
          Align(
              alignment: Alignment.center,
              child: Text('By creating an account, you agree to Wasty',style: TextStyle(
                fontSize: 13.sp
              ),)),
          Align(
            alignment: Alignment.center,
            child: RichText(text: TextSpan(
              text: 'Terms of use ',style: TextStyle(
              color: AppColors.WidgetColor,
            ),
              children:[
                TextSpan(
                  text: 'and ',style: TextStyle(
                  color: AppColors.blckColor,
                ),
                ),
                TextSpan(
                    text: 'Privacy policy',style: TextStyle(
                  color: AppColors.WidgetColor,
                ),
                ),
              ],
            ),),
          ),
          SizedBox(
            height: 15.h,
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
                child: AppCustomWidget.customContainer(title: 'Facebook',icon: FaIcon(FontAwesomeIcons.facebook,color: Colors.blue,)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
