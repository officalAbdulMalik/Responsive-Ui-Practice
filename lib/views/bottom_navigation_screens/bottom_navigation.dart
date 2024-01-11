import 'package:flutter/material.dart';
import 'package:wastly/views/bottom_navigation_screens/request_detail_screen/request_detail_screen.dart';
import 'package:wastly/views/bottom_navigation_screens/request_screen.dart';
import 'package:wastly/views/bottom_navigation_screens/store_custom_screen/custom_widgets.dart';
import 'package:wastly/views/bottom_navigation_screens/store_custom_screen/store_detail_screen.dart';
import 'package:wastly/views/bottom_navigation_screens/stores_screen%5D.dart';
import '../../controlrs/cubits/app_cubit/bottom_navigation_cubit.dart';
import '../../controlrs/textcontrolers/page_view_controler.dart';
import '../../models/app_colors.dart';
import '../../models/app_custom_icon.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../app_custom_widgets/app_custom_widget.dart';
import '../app_custom_widgets/drawer_drawer_screens/drawer.dart';
import 'blogs_screen.dart';
import 'map_screen.dart';

class BottomNavigationPages extends StatefulWidget {
  const BottomNavigationPages({Key? key}) : super(key: key);

  @override
  State<BottomNavigationPages> createState() => _BottomNavigationPagesState();
}

class _BottomNavigationPagesState extends State<BottomNavigationPages> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavigationCubit(0),
      child: SafeArea(
        child: Scaffold(
          endDrawer: CustomDrawer().customDrawer(context),
          appBar: AppBar(
            elevation: 0,
            backgroundColor: AppColors.whiteColor,
            automaticallyImplyLeading: false,
            iconTheme: IconThemeData(color: AppColors.WidgetColor, size: 30.sp),
            title: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    margin: EdgeInsets.only(left: 30.sp),
                    child: Text(
                      'Wastly',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: AppColors.WidgetColor,
                        fontSize: 26.sp,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                      margin: EdgeInsets.only(
                        top: 20.sp,
                      ),
                      alignment: Alignment.bottomLeft,
                      child: Icon(
                        Icons.rectangle_rounded,
                        color: AppColors.WidgetColor,
                        size: 10.sp,
                      )),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: const EdgeInsets.only(left: 10),
                    height: 43.h,
                    width: 27.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: AppColors.WidgetColor,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Icon(
                            AppCustomIcon.drom_icon,
                            color: AppColors.whiteColor,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            '22',
                            style: TextStyle(color: AppColors.whiteColor),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: BlocBuilder<BottomNavigationCubit, int>(
            builder: (context, state) {
              return Container(
                height: 88.h,
                width: 414.w,
                color: AppColors.whiteColor,
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          context
                              .read<BottomNavigationCubit>()
                              .getIndex(mystate: 0);
                          PageViewControler.controler.jumpToPage(0);
                        },
                        child: Column(
                          children: [
                            Expanded(
                                child: Image.asset(
                              'assets/images/map.png',
                              color: state == 0
                                  ? AppColors.WidgetColor
                                  : Colors.grey,
                            )),
                            Expanded(
                                child: Text(
                              'map',
                              style: TextStyle(
                                color: state == 0
                                    ? AppColors.WidgetColor
                                    : AppColors.borderColor,
                              ),
                            )),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        child: InkWell(
                            onTap: () {
                              context
                                  .read<BottomNavigationCubit>()
                                  .getIndex(mystate: 1);
                              PageViewControler.controler.jumpToPage(1);
                            },
                            child: Column(
                              children: [
                                Expanded(
                                    child: Icon(
                                  AppCustomIcon.article_icon,
                                  color: state == 1
                                      ? AppColors.WidgetColor
                                      : AppColors.borderColor,
                                  size: 30.sp,
                                )),
                                Expanded(
                                    child: Text(
                                  'blog',
                                  style: TextStyle(
                                    color: state == 1
                                        ? AppColors.WidgetColor
                                        : AppColors.borderColor,
                                  ),
                                ))
                              ],
                            ))),
                    Expanded(
                      child: InkWell(
                          onTap: () {
                            context
                                .read<BottomNavigationCubit>()
                                .getIndex(mystate: 2);
                            PageViewControler.controler.jumpToPage(2);
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  backgroundColor: Colors.transparent,
                                  insetPadding: EdgeInsets.zero,
                                  actions: [
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 10.sp, right: 10.sp),
                                      height: 500.h,
                                      width: 400.w,
                                      child:
                                          StoreCustomWidget.getDilog1(context),
                                    )
                                  ],
                                );
                              },
                            );
                            //   title:
                          },
                          child: Column(
                            children: [
                              Expanded(
                                  child: Image.asset(
                                'assets/images/Icon_shopping_bag.png',
                                color: state == 2
                                    ? AppColors.WidgetColor
                                    : AppColors.borderColor,
                              )),
                              Expanded(
                                child: Text(
                                  'store',
                                  style: TextStyle(
                                    color: state == 2
                                        ? AppColors.WidgetColor
                                        : AppColors.borderColor,
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ),
                    Expanded(
                        child: InkWell(
                            onTap: () {
                              context
                                  .read<BottomNavigationCubit>()
                                  .getIndex(mystate: 3);
                              PageViewControler.controler.jumpToPage(3);
                            },
                            child: Column(
                              children: [
                                Expanded(
                                    child: Icon(
                                  AppCustomIcon.loud_speaker,
                                  color: state == 3
                                      ? AppColors.WidgetColor
                                      : AppColors.borderColor,
                                  size: 30.sp,
                                )),
                                Expanded(
                                    child: Text(
                                  'request',
                                  style: TextStyle(
                                    color: state == 3
                                        ? AppColors.WidgetColor
                                        : AppColors.borderColor,
                                  ),
                                )),
                              ],
                            ))),
                  ],
                ),
              );
            },
          ),
          body: SizedBox(
            height: 1.sh,
            width: 1.sw,
            child: PageView(
              physics: NeverScrollableScrollPhysics(),
              controller: PageViewControler.controler,
              children: [
                MapScreen(),
                BlogScreen(),
                StoreScreen(),
                RequestScreen(),
                StoreDetailScreen(),
                RequestDetailScreen(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
