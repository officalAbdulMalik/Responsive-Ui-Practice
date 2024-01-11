import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import '../../../controlrs/textcontrolers/page_view_controler.dart';
import '../../../models/app_colors.dart';
import '../../app_custom_widgets/app_custom_widget.dart';

class RequestDetailScreen extends StatelessWidget {
  const RequestDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int index = 0;
    TextEditingController controller = TextEditingController();
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 20.sp, right: 20.sp),
        children: [
          SizedBox(
            height: 30.h,
          ),
          Text(
            'Contact us for container',
            style: TextStyle(
              color: AppColors.WidgetColor,
              fontSize: 21.sp,
            ),
          ),
          SizedBox(
            height: 20.sp,
          ),
          Container(
            padding: EdgeInsets.only(left: 10.sp, right: 10.sp),
            height: 56.h,
            width: 368.w,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.14),
                  offset: Offset(0, 3.0),
                  blurRadius: 6.0,
                ),
              ],
              color: AppColors.whiteColor,
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: TextField(
                    style: TextStyle(
                      color: AppColors.WidgetColor,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Select type of request',
                      hintStyle: TextStyle(
                        color: AppColors.WidgetColor,
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: InkWell(
                        onTap: () {
                          showMaterialModalBottomSheet(
                            context: context,
                            builder: (context) => SizedBox(
                              height: 304.5.h,
                              width: MediaQuery.of(context).size.width,
                              child: getBottomSheet(),
                            ),
                          );
                        },
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.WidgetColor,
                        )))
              ],
            ),
          ),
          SizedBox(
            height: 20.sp,
          ),
          Container(
            padding: EdgeInsets.only(left: 20.sp),
            height: 224.h,
            width: 368.w,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.14),
                  offset: Offset(0, 3.0),
                  blurRadius: 6.0,
                ),
              ],
              borderRadius: BorderRadius.circular(10.r),
              color: AppColors.whiteColor,
            ),
            child: TextField(
              controller: controller,
              keyboardType: TextInputType.multiline,
              style: TextStyle(
                color: AppColors.WidgetColor,
              ),
              maxLines: null,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Type message',
                hintStyle: TextStyle(
                  color: AppColors.WidgetColor,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          SizedBox(
            height: 80.h,
            child: AppCustomWidget.customButton(
                Text(
                  'Send Request',
                  style: TextStyle(
                    color: AppColors.whiteColor,
                  ),
                ),
                AppColors.WidgetColor, () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    backgroundColor: Colors.transparent,
                    insetPadding: EdgeInsets.zero,
                    actions: [
                      getDialog(context),
                    ],
                  );
                },
              );
            }),
          ),
        ],
      ),
    );
  }

  getDialog(BuildContext context) {
    return Container(
      height: 550.h,
      width: 350.w,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  margin: EdgeInsets.only(right: 20.sp),
                  child: Icon(
                    Icons.close,
                    color: AppColors.Textfieldcolor,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Image.asset('assets/images/requestpic.png'),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'Message sent successfully',
                style: TextStyle(
                  fontSize: 23.sp,
                  color: AppColors.blckColor,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'We will reply to you as soon as possible\nThank you for the understanding,s',textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.blckColor,
                  fontSize: 15.sp,
                ),
              ),
            ),
          ),
          Expanded(child: AppCustomWidget.customButton(Text('Got It'), AppColors.WidgetColor, () {
           Navigator.pop(context);
          }),),
        Spacer(),
        ],
      ),
    );
  }

  getBottomSheet() {
    return Column(
      children: [
        Expanded(
          child: Align(
              alignment: Alignment.center, child: Text('I want container')),
        ),
        Expanded(
          child: Divider(
            color: AppColors.blckColor,
          ),
        ),
        Expanded(
          child: Align(
              alignment: Alignment.center, child: Text('Become a blogger')),
        ),
        Expanded(
          child: Divider(
            color: AppColors.blckColor,
          ),
        ),
        Expanded(
          child: Align(
              alignment: Alignment.center, child: Text('Coupons problem')),
        ),
        Expanded(
          child: Divider(
            color: AppColors.blckColor,
          ),
        ),
        Expanded(
          child: Align(
              alignment: Alignment.center,
              child: Text('Incorrect point location')),
        ),
        Expanded(
          child: Divider(
            color: AppColors.blckColor,
          ),
        ),
        Expanded(
          child: Align(alignment: Alignment.center, child: Text('Others')),
        ),
      ],
    );
  }
}
