import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wastly/views/app_custom_widgets/app_custom_widget.dart';
import '../../../models/app_colors.dart';
import '../../../models/app_custom_icon.dart';
class CouponsScreen extends StatefulWidget {
  const CouponsScreen({Key? key}) : super(key: key);

  @override
  State<CouponsScreen> createState() => _CouponsScreenState();
}

class _CouponsScreenState extends State<CouponsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: false,
        physics: NeverScrollableScrollPhysics(),
        children: [
          Container(
            height: 105.h,
            width: 415.w,
            color: AppColors.WidgetColor,
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height:45.h,
                    child: VerticalDivider(
                      color: AppColors.whiteColor,
                      thickness: 2.5,
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Text('My coupons',style: TextStyle(
                    color: AppColors.whiteColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 19.sp,
                  ),),),
                Expanded(child: InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(AppCustomIcon.close,color: AppColors.whiteColor,size: 20.sp,)))
              ],
            ),
          ),
          Container(
            height: 85.h,
            width: 415.w,
            decoration: BoxDecoration(
              color: Colors.grey[100],
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
            Expanded(
              flex: 4,
              child: Align(
                alignment: Alignment(0.0, 0.13),
                child: Text(
                  'Current balance:',
                  style: GoogleFonts.roboto(
                    fontSize: 17.0,
                    color: const Color(0xFF292929),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Align(
                alignment: Alignment.centerRight,
                child:Icon(AppCustomIcon.w_icon,color: AppColors.WidgetColor,size: 30.sp,),
              ),
            ),
                Expanded(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.only(left: 10.sp),
                  alignment: Alignment.centerLeft,
                    child: Text('250',style: GoogleFonts.roboto(color: AppColors.blckColor,fontSize: 40.sp),)))
              ],
            ),
          ),
          SizedBox(height: 30.h,),
          Container(
            margin:EdgeInsets.only(left: 20.sp,right: 20.sp),
            child: Row(
              children: [
                Expanded(
                  child: Text('Purchase history',style: GoogleFonts.roboto(
                    color: AppColors.Textfieldcolor,
                    fontSize: 17.sp,
                  ),),
                ),
                Expanded(child: Divider(thickness: 2.0,color: AppColors.borderColor,))
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          AppCustomWidget.cuoponCustomCntainer(context),
          SizedBox(
            height: 10.h,
          ),
          AppCustomWidget.cuoponCustomCntainer(context),
          SizedBox(
            height: 10.h,
          ),
          AppCustomWidget.cuoponCustomCntainer(context),
          SizedBox(
            height: 10.h,
          ),
          AppCustomWidget.cuoponCustomCntainer(context),
          SizedBox(
            height: 10.h,
          ),
          AppCustomWidget.cuoponCustomCntainer(context),
        ],
      ),
    );
  }
}
