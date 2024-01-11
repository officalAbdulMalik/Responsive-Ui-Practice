import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wastly/controlrs/textcontrolers/page_view_controler.dart';
import 'package:wastly/models/app_colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wastly/views/welcome_views/get_starteed/sign_in_page.dart';

import '../../../controlrs/cubits/app_cubit/signin_screen_cubit.dart';
import 'get_started_page.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

 static PageController controller=PageController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInCubit(0),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.BackgroundColor,
          body: ListView(
            children: [
              Container(
                  height: 200.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          AppColors.WidgetColor,
                          Color(0xff77B899),
                        ]),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 50.sp,
                        left: 150.sp,
                        child: Text(
                          'Wasty',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40.sp,
                          ),
                        ),
                      ),
                      Positioned(
                          top: 95.sp,
                          left: 150.sp,
                          child: Text(
                            'think for nature',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.sp,
                            ),
                          )),
                      Positioned(
                          top: 85.sp,
                          right: 60.sp,
                          child: Icon(
                            Icons.rectangle_rounded,
                            color: Colors.white,
                            size: 20,
                          ))
                    ],
                  )),
              Container(
                height: 62.27.h,
                width: 414.w,
                color: Colors.white,
                child: Row(
                  children: [
                    Expanded(
                      child: BlocBuilder<SignInCubit, int>(
                        builder: (context, state) {
                          return InkWell(
                            onTap: () {
                              context.read<SignInCubit>().getIndex(index: 0);
                             PageViewControler.controller1.jumpToPage(0);
                            },
                            child: Container(
                              height: 62.27.h,
                              width: 207.w,
                              decoration: BoxDecoration(
                                  border: Border(
                                bottom: BorderSide(
                                    width: 2,
                                    color: state == 0
                                        ? AppColors.WidgetColor
                                        : Colors.transparent),
                              )),
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Sign In',
                                    style: TextStyle(
                                      color: state == 0
                                          ? AppColors.WidgetColor
                                          : Colors.grey,
                                    ),
                                  )),
                            ),
                          );
                        },
                      ),
                    ),
                    Expanded(
                      child: BlocBuilder<SignInCubit, int>(
                        builder: (context, state) {
                          return InkWell(
                            onTap: (){
                              context.read<SignInCubit>().getIndex(index: 1);
                              PageViewControler.controller1.jumpToPage(1);
                            },
                            child: Container(
                              height: 62.27.h,
                              width: 207.w,
                              decoration: BoxDecoration(
                                  border: Border(
                                bottom: BorderSide(
                                    width: 2,
                                    color: state == 1
                                        ? AppColors.WidgetColor
                                        : Colors.transparent),
                              )),
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Get Started',
                                    style: TextStyle(
                                      color: state == 1
                                          ? AppColors.WidgetColor
                                          : Colors.grey,
                                    ),
                                  )),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 1.sh,
                width: MediaQuery.of(context).size.width,
                child: PageView(
                  physics: NeverScrollableScrollPhysics(),
                  controller:PageViewControler.controller1,
                  children: [
                    SignIn(),
                    GetStarted(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
