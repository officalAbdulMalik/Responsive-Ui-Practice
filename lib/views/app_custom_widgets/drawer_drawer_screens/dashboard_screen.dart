import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wastly/models/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wastly/views/app_custom_widgets/app_custom_widget.dart';
import '../../../models/app_custom_icon.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: AppColors.WidgetColor,
        automaticallyImplyLeading: false,
        toolbarHeight: 80.sp,
        title:Row(
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
              child: Text('Dashboard',style: TextStyle(
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
      body: ListView(
        padding: EdgeInsets.only(left: 22.sp,right: 22.sp),
        children: [
          SizedBox(
            height: 25.h,
          ),
          Row(
            children: [
              Expanded(child: Text('Analytics',style: GoogleFonts.roboto(
                color: AppColors.blckColor,
                fontSize: 23.sp,
                fontWeight: FontWeight.bold,
              ),),),
              Expanded(child: Container(
                height: 34.h,
                width: 164.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  border: Border.all(color: AppColors.WidgetColor)
                ),
                child: Row(
                  children: [
                    Expanded(child: Icon(Icons.date_range,color: AppColors.WidgetColor,),),
                    Expanded(
                        flex: 4,
                        child:Text('Jan, 2020 - Apr, 2021',style: TextStyle(
                          color: AppColors.WidgetColor,
                        ),),),
                  ],
                ),
              ),),
            ],
          ),
          SizedBox(height: 20.h,),
          AppCustomWidget.dashboardContainer(text: '4K',title: 'Total Session',
              icon:Icons.refresh,arrow:Icons.arrow_upward_outlined,
              percant: '2.3',color: AppColors.green),
          SizedBox(
            height: 20.h,
          ),
          AppCustomWidget.dashboardContainer(text: '56%',title: 'Total Bounce Rate',
              icon:Icons.percent,arrow:Icons.arrow_upward_outlined,
              percant: '2.1',color: AppColors.green),
          SizedBox(
            height: 20.h,
          ),
          AppCustomWidget.dashboardContainer(text: '\$768,342',title: 'Total Revenues',
              icon:AppCustomIcon.dollor_icon,arrow:Icons.arrow_downward,
              percant: '1.8',color:Colors.red),
          SizedBox(
            height: 20.h,
          ),
          AppCustomWidget.dashboardContainer(text: '4K',title: 'Total Session',
              icon:Icons.refresh,arrow:Icons.arrow_upward_outlined,
              percant: '2.3',color: AppColors.green),
        ],
      ),
    );
  }
}
