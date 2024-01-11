import 'package:flutter/material.dart';
import 'package:wastly/controlrs/textcontrolers/page_view_controler.dart';
import 'package:wastly/models/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wastly/views/app_custom_widgets/app_custom_widget.dart';
import 'package:wastly/views/bottom_navigation_screens/store_custom_screen/store_detail_screen.dart';
import 'package:wastly/views/bottom_navigation_screens/stores_screen%5D.dart';

import '../../../models/app_custom_icon.dart';

class StoreCustomWidget {
  static storeCustomContainer(BuildContext context) {
    return InkWell(
      onTap: () {
        PageViewControler.controler.jumpToPage(4);
      },
      child: Container(
        height: 144.h,
        width: 384.w,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.16),
              offset: Offset(0, 3.0),
              blurRadius: 17.0,
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
                child: Image.asset(
              'assets/images/slider1.png',
              height: 100.h,
            )),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Expanded(
                      flex: 1,
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'Container for\ncomposting',
                            style: TextStyle(
                              fontSize: 19.sp,
                            ),
                          ))),
                  Expanded(
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'napravisisam.com',
                          style: TextStyle(
                            color: AppColors.appgeryColor,
                          ),
                        )),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                padding: EdgeInsets.only(top: 5.sp, bottom: 5.sp),
                margin:
                    EdgeInsets.only(left: 40.sp, right: 10.sp, bottom: 10.sp),
                height: 88.h,
                width: 87.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors.WidgetColor,
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          children: [
                            Expanded(
                              child: Icon(
                                AppCustomIcon.dollor_icon,
                                color: AppColors.whiteColor,
                                size: 18.sp,
                              ),
                            ),
                            Expanded(
                                flex: 2,
                                child: Text(
                                  '280',
                                  style: TextStyle(
                                    color: AppColors.whiteColor,
                                    fontSize: 25.sp,
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      color: AppColors.whiteColor,
                    ),
                    Expanded(
                        child: Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        '50%',
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 25.sp,
                        ),
                      ),
                    ))
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }

//onbording screen dialogs
  static getDilog1(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                margin: EdgeInsets.only(right: 10.sp, top: 10.sp),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.close,
                    color: AppColors.appgeryColor,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Image.asset('assets/images/storepic1.png'),
          ),
          Expanded(
            flex: 1,
            child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Welcome to Wasty Store',
                  style: TextStyle(
                    fontSize: 23.sp,
                  ),
                )),
          ),
          Expanded(
            child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                    'In this section you will be able to spend\nthe coins won from the application.')),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin: EdgeInsets.only(right: 5.sp),
                      height: 20.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.WidgetColor,
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.only(left: 5.sp),
                    height: 20.h,
                    width: 20.w,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColors.WidgetColor)),
                  ),
                ))
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: AppCustomWidget.customButton(
                Text('Next'), AppColors.WidgetColor, () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    insetPadding: EdgeInsets.zero,
                    backgroundColor: Colors.transparent,
                    actions: [
                      Container(
                        padding: EdgeInsets.only(left: 10.sp, right: 10.sp),
                        width: 530.w,
                        height: 600.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColors.whiteColor,
                        ),
                        child: dilog2(context),
                      ),
                    ],
                  );
                },
              );
            }),
          ),
          Spacer(),
        ],
      ),
    );
  }

  static dilog2(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.only(right: 10.sp, top: 10.sp),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.close,
                  color: AppColors.appgeryColor,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: Container(
              margin: EdgeInsets.only(bottom: 10.sp),
              child: Image.asset(
                'assets/images/storepic2.png',
              )),
        ),
        Expanded(
          flex: 2,
          child: Align(
              alignment: Alignment.center,
              child: Text(
                'You will have the opportunity to use a\nvoucher with certain discounts to our\n'
                'partners of various categories of\nproducts related '
                'to sustainability and\nrecycling.',
                style: TextStyle(
                  fontSize: 14.sp,
                ),
              )),
        ),
        Expanded(
          flex: 2,
          child: Align(
              alignment: Alignment.center,
              child: Text(
                'After successfully adding a voucher,\nyouwill be able to receive a discount '
                '\ncode or directly download it as a PDF\nfile that you can use on site in the store',
                style: TextStyle(
                  fontSize: 14.sp,
                ),
              )),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.only(right: 5.sp),
                    height: 20.h,
                    width: 20.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.WidgetColor,
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(left: 5.sp),
                  height: 20.h,
                  width: 20.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.WidgetColor,
                    //border: Border.all(color: AppColors.WidgetColor)
                  ),
                ),
              ))
            ],
          ),
        ),
        Expanded(
            child: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  margin: EdgeInsets.only(right: 10.sp),
                  height: 56.h,
                  width: 160.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: AppColors.whiteColor,
                    border: Border.all(color: AppColors.WidgetColor),
                  ),
                  child: Center(
                      child: Text(
                    'Go Back',
                    style: TextStyle(
                      color: AppColors.WidgetColor,
                    ),
                  )),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pop(context);
                  Navigator.of(context).pop(context);
                },
                child: Container(
                  margin: EdgeInsets.only(left: 10.sp),
                  height: 56.h,
                  width: 160.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: AppColors.WidgetColor,
                    border: Border.all(color: AppColors.WidgetColor),
                  ),
                  child: Center(
                      child: Text(
                    'Got it',
                    style: TextStyle(
                      color: AppColors.whiteColor,
                    ),
                  )),
                ),
              ),
            ),
          ],
        )),
        Spacer(),
      ],
    );
  }

  //detail screen daialog
  static getDialog3(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Align(
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.close,
                  color: AppColors.appgeryColor,
                )),
          ),
        ),
        Expanded(
          flex: 5,
          child: Image.asset('assets/images/storepic4.png'),
        ),
        Expanded(
          flex: 2,
          child: Align(
              alignment: Alignment.center,
              child: Text(
                'Confirm your purcheses',
                style: TextStyle(
                  fontSize: 23.sp,
                ),
              )),
        ),
        Expanded(
          flex: 2,
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset('assets/images/slider1.png')),
              ),
              Expanded(
                  flex: 6,
                  child: Column(
                    children: [
                      Expanded(
                        child: Text(
                          'Paper Bag',
                          style: TextStyle(
                            fontSize: 20.sp,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 50.sp, right: 50.sp),
                          height: 40.h,
                          width: 159.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.r),
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
                      )
                    ],
                  ))
            ],
          ),
        ),
        Spacer(
          flex: 1,
        ),
        Expanded(
          flex: 2,
          child: AppCustomWidget.customButton(
              Text(
                'Get It now',
                style: TextStyle(
                  color: AppColors.whiteColor,
                ),
              ),
              AppColors.WidgetColor, () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
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
                      child: getDialog4(context),
                    ),
                  ],
                );
              },
            );
          }),
        ),
        SizedBox(
          height: 20.h,
        ),
      ],
    );
  }

  static getDialog4(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 4,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Order\nConfirmed !',
                        style: TextStyle(
                          color: AppColors.WidgetColor,
                          fontSize: 28.sp,
                        ),
                      )),
                ),
                Expanded(
                  flex: 1,
                  child: Image.asset('assets/images/storepic5.png'),
                ),
              ],
            )),
        Expanded(
            flex: 2,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'You have successfully purchased a voucher\nto the napravisisam.com for a product Paper Bag',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontStyle: FontStyle.italic,
                ),
              ),
            )),
        Expanded(
            flex: 2,
            child: Text(
              'You can find your discount ticket in section My coupons section & e-mail.',
              style: TextStyle(
                fontSize: 17.sp,
              ),
            )),
        Expanded(
            child: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  margin: EdgeInsets.only(right: 10.sp),
                  height: 100.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: AppColors.WidgetColor, width: 2.0.sp),
                    borderRadius: BorderRadius.circular(30.r),
                    color: AppColors.whiteColor,
                  ),
                  child: Center(
                    child: Text(
                      'Close',
                      style: TextStyle(
                        color: AppColors.WidgetColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                child: Container(
                    margin: EdgeInsets.only(left: 10.sp),
                    height: 100.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.r),
                      color: AppColors.WidgetColor,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/store.png',
                            height: 20.sp,
                            color: AppColors.whiteColor,
                          ),
                        ),
                        Expanded(
                            flex: 2,
                            child: Text(
                              'My coupons',
                              style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: 16.sp,
                              ),
                            ))
                      ],
                    )),
              ),
            ),
          ],
        )),
        SizedBox(
          height: 40.h,
        ),
      ],
    );
  }
}
