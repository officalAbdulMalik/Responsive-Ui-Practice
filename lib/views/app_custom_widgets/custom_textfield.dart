import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wastly/models/app_colors.dart';
import 'package:wastly/models/app_custom_icon.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomTextField {

  static customTextField(
      {String? hint, Icon? icon, required bool obscure, Icon? prefixico, TextEditingController? controller}) {
    return Container(
      padding: EdgeInsets.only(left: 20.sp),
      height: 57.h,
      width: 342.w,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.11),
            offset: Offset(0, 3.0),
            blurRadius: 12.0,
          ),
        ],
        color: const Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: TextField(
        controller: controller,
        obscureText: obscure,
        style: const TextStyle(
          color: Colors.black,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 10.sp,bottom: 5.sp),
          hintText: '$hint',
          alignLabelWithHint: true,
          icon: icon,
          suffixIcon: prefixico,
          hintStyle: TextStyle(
            color: AppColors.Textfieldcolor,
            fontSize: 18.sp,
          ),
        ),
      ),
    );
  }

}