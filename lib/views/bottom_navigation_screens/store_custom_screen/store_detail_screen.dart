import 'package:flutter/material.dart';
import 'package:wastly/models/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../models/app_custom_icon.dart';
import '../../app_custom_widgets/app_custom_widget.dart';
import 'custom_widgets.dart';

class StoreDetailScreen extends StatelessWidget {
  const StoreDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();

    var index = 0;

    final List ImageList = [
      'assets/images/slider1.png',
      'assets/images/slider2.png',
      'assets/images/slider3.png',
      'assets/images/slider4.png',
    ];
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.only(top: 10.sp),
          padding: EdgeInsets.only(left: 10.sp, right: 10.sp, bottom: 10.sp),
          height: 238.h,
          width: 413.w,
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.16),
                offset: Offset(1, 3.0),
                blurRadius: 17.0,
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                  child: Container(
                margin: EdgeInsets.only(top: 20.sp),
                child: InkWell(
                  onTap: () {
                    controller.previousPage(
                        duration: (Duration(microseconds: 33)),
                        curve: Curves.easeIn);
                  },
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: AppColors.appgeryColor,
                    ),
                  ),
                ),
              )),
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                        flex: 3,
                        child: PageView.builder(
                          controller: controller,
                          itemCount: 4,
                          itemBuilder: (BuildContext context, int index) {
                            return Image.asset('${ImageList[index]}');
                          },
                        )),
                    Expanded(
                        child: SmoothPageIndicator(
                            controller: controller, // PageController
                            count: 4,
                            effect: WormEffect(
                              activeDotColor: AppColors.WidgetColor,
                              dotColor: AppColors.appgeryColor,
                              radius: 10.sp,
                            ), // your preferred effect
                            onDotClicked: (index) {})),
                  ],
                ),
              ),
              Expanded(
                  child: Column(
                children: [
                  Expanded(
                    child: Align(
                        alignment: Alignment.center,
                        child: Text('napravisisam.com')),
                  ),
                  Expanded(
                    flex: 10,
                    child: InkWell(
                      onTap: () {
                        controller.nextPage(
                            duration: (Duration(microseconds: 33)),
                            curve: Curves.easeIn);
                      },
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.appgeryColor,
                        ),
                      ),
                    ),
                  )
                ],
              )),
            ],
          ),
        ),
        SizedBox(
          height: 20.sp,
        ),
        Padding(
          padding: EdgeInsets.only(left: 12.0.sp, right: 8.0.sp),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  'Paper Bag',
                  style: TextStyle(
                    color: AppColors.blckColor,
                    fontSize: 24.sp,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 40.h,
                  width: 159.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: AppColors.WidgetColor,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Icon(
                          AppCustomIcon.dollor_icon,
                          color: AppColors.whiteColor,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          '280',
                          style: TextStyle(
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ),
                      Expanded(
                        child: VerticalDivider(
                          color: AppColors.whiteColor,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          '-50%',
                          style: TextStyle(
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
              'There are many variations of passages of\n'
              'Lorem Ipsum available, but the majority\n'
              'Lorem Ipsum available, but the majority\n'
              'There are many variations of passages of\n'
              'have suffered alteration in some form, by \n'
              'There are many variations of passages of\n'
              'you are going to use a passage of Lorem\n'
              'generators on the Internet tend to repeat\n'
              'generators on the Internet tend to repeat\n'
              'generators on the Internet tend to repeat\n',
              style: TextStyle(
                fontSize: 18.sp,
              )),
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
          margin: EdgeInsets.only(left: 10.sp, right: 20.sp),
          child: AppCustomWidget.customButton(
              Text(
                'Get your voucher now',
                style: TextStyle(
                  color: AppColors.whiteColor,
                ),
              ),
              AppColors.WidgetColor,
              () {
                showDialog(context: context, builder: (BuildContext context) {
                  return AlertDialog(
                      insetPadding: EdgeInsets.zero,
                      backgroundColor: Colors.transparent,
                      actions: [
                  Container(
                  padding: EdgeInsets.only(left: 10.sp, right: 10.sp),
                  width: 368.w,
                  height: 477.h,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.whiteColor,
                  ),
                    child: StoreCustomWidget.getDialog3(context),
                  ),],);
                }, );
              },),
        )
      ],
    );
  }
}
