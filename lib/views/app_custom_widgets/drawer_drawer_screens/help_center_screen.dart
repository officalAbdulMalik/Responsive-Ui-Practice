import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wastly/views/app_custom_widgets/custom_textfield.dart';
import '../../../models/app_colors.dart';
import '../../../models/app_custom_icon.dart';
import '../app_custom_widget.dart';
class HelpCenter extends StatefulWidget {
  const HelpCenter({Key? key}) : super(key: key);

  @override
  State<HelpCenter> createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {

  List images=[
    'bin.png',
    'book.png',
    'map.png',
    'store.png',

  ];

  List text=[
    'Recycling',
    'Learn more',
    'Mapping',
    'Store',
  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor:AppColors.whiteColor,
        appBar: AppBar(
          backgroundColor: AppColors.WidgetColor,
          automaticallyImplyLeading: false,
          toolbarHeight: 100.h,
          title: Row(
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
                child: Text('Support center',style: TextStyle(
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
          padding: EdgeInsets.only(left: 19.sp,right: 19.sp),
          children: [
            SizedBox(
              height: 20.h,
            ),
            Text('Search everything you need',style: GoogleFonts.roboto(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: AppColors.blckColor,
            ),),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 56.h,
              width: 368.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.12),
                    offset: Offset(0, 3.0),
                    blurRadius: 21.0,
                  ),
                ],
              color: AppColors.whiteColor,
            ),
              child: Row(
                children: [
                  Expanded(child: Stack(children: [
                    Container(
                      height: 70.h,
                      width: 67.w,
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(10.r),
                      color: AppColors.appAmber,
                    ),
                      child: Center(child: Icon(Icons.search_rounded,color: AppColors.whiteColor,size: 30.sp,),),
                    ),
                  ],),),
                  Expanded(
                      flex: 6,
                      child: SizedBox(
                    height: 56.h,
                    width: 100.w,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 3,
                          child: Container(
                            margin: EdgeInsets.only(left: 10.sp),
                            child: Align(
                            alignment:Alignment.center,
                            child:TextField(
                              style: TextStyle(
                                color: AppColors.appgeryColor,
                              ),
                              decoration: InputDecoration(
                                hintText: 'Select type of request',
                                border: InputBorder.none,
                                hintStyle: GoogleFonts.roboto(
                                  color: AppColors.appgeryColor,
                                )
                              ),
                            )),
                          )),
                      Expanded(child:Icon(Icons.arrow_forward_ios,color:AppColors.appgeryColor,)),
                    ],
                  ),
                  ),),
                ],
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Text('Popular articles',style: GoogleFonts.roboto(
              color: AppColors.blckColor,
              fontSize: 23.sp,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(
              height: 7.h,
            ),
            AppCustomWidget.helpCustomContainer(
              title: 'Extenuating Circumstances Policy\nand the coronavirus (COVID-19)',
              image1: Image.asset('assets/images/girl.png',),
              index: 1,
              image2: Image.asset('assets/images/design.png'),),
            SizedBox(
              height: 30.h,
            ),
            AppCustomWidget.helpCustomContainer(title: 'How do I reset or change\nmy password ?'
                , image2: Image.asset('assets/images/undraw.png'),index: 0),
            SizedBox(
              height: 30.h,
            ),
            AppCustomWidget.helpCustomContainer(title: 'How do I create an account ?'
                , image2: Image.asset('assets/images/pushdesi.png'),index: 0),
            SizedBox(
              height: 30.h,
            ),
            Text('Choose the kind of help you need',style: GoogleFonts.roboto(
              color: AppColors.blckColor,
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(
              height: 8.h,
            ),
            Container(
              height: 113,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.12),
                    offset: Offset(0, 3.0),
                    blurRadius: 21.0,
                  ),
                ],
              ),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(right: 10.sp),
                    height: 83.h,
                    width: 148.w,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.12),
                          offset: Offset(0, 3.0),
                          blurRadius: 21.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10.r),
                      color: AppColors.whiteColor,
                    ),
                    child: Column(
                      children: [
                        Expanded(
                            flex:2,
                            child: Image.asset('assets/images/${images[index]}')),
                        Expanded(child: Text('${text[index]}'),),
                      ],
                    ),
                  );
                }),
            ),
            SizedBox(height: 20.sp,),
            SizedBox(
              height: 10.sp,
            ),
            SizedBox(
              height: 20.sp,
            ),
            Text('About Wasty',style: GoogleFonts.roboto(
              color: AppColors.blckColor,
              fontWeight: FontWeight.bold,
              fontSize: 24.sp,
            ),),
            SizedBox(height: 10.sp,),
            AppCustomWidget.helpTextWidget(title: 'Getting started'),
            SizedBox(height: 8.sp,),
            Divider(),
            SizedBox(height: 10.sp,),
            AppCustomWidget.helpTextWidget(title: 'How Wasty works'),
            SizedBox(height: 8.sp,),
            Divider(),
            SizedBox(height: 10.sp,),
            AppCustomWidget.helpTextWidget(title: 'Community standards'),
            SizedBox(height: 8.sp,),
            Divider(),
            SizedBox(height: 10.sp,),
            AppCustomWidget.helpTextWidget(title: 'Partnerships'),
            SizedBox(height: 8.sp,),
            Divider(),
            SizedBox(height: 20.sp,),
            Text('Your account',style: GoogleFonts.roboto(
              color: AppColors.blckColor,
              fontWeight: FontWeight.bold,
              fontSize: 24.sp,
            ),),
            SizedBox(height: 10.sp,),
            AppCustomWidget.helpTextWidget(title: 'Creating an account'),
            SizedBox(height: 8.sp,),
            Divider(),
            SizedBox(height: 10.sp,),
            AppCustomWidget.helpTextWidget(title: 'Managing your account'),
            SizedBox(height: 8.sp,),
            Divider(),
            SizedBox(height: 10.sp,),
            AppCustomWidget.helpTextWidget(title: 'ID and verification'),
            SizedBox(height: 8.sp,),
            Divider(),
            SizedBox(height: 10.sp,),
            AppCustomWidget.helpTextWidget(title: 'Reviews'),
            SizedBox(height: 8.sp,),
            Divider(),
            SizedBox(height: 20.sp,),
            Text('Terms & policies',style: GoogleFonts.roboto(
              color: AppColors.blckColor,
              fontWeight: FontWeight.bold,
              fontSize: 24.sp,
            ),),
            SizedBox(height: 10.sp,),
            AppCustomWidget.helpTextWidget(title: 'Terms of Service'),
            SizedBox(height: 8.sp,),
            Divider(),
            SizedBox(height: 10.sp,),
            AppCustomWidget.helpTextWidget(title: 'Payment Terms of Service'),
            SizedBox(height: 8.sp,),
            Divider(),
            SizedBox(height: 10.sp,),
            AppCustomWidget.helpTextWidget(title: 'Privacy Policy'),
            SizedBox(height: 8.sp,),
            Divider(),
            SizedBox(height: 10.sp,),
            AppCustomWidget.helpTextWidget(title: 'Privacy Policy for partnership'),
            SizedBox(height: 8.sp,),
            Divider(),
            SizedBox(height: 20.h,),
            Text('Can’t find your answer here ?',style: GoogleFonts.roboto(
              color: AppColors.blckColor,
              fontWeight: FontWeight.bold,
              fontSize: 24.sp,
            ),),
           Text('Contact our support team now',style: GoogleFonts.roboto(
             fontSize: 20.sp,
           ),),
            SizedBox(height: 15.h,),
            AppCustomWidget.customButton(Text('Contact support',style: GoogleFonts.roboto(
              color: AppColors.whiteColor,
            ),), AppColors.WidgetColor, () { }),
            SizedBox(height: 20.h,),
          ],
        )
      ),
    );
  }
}
