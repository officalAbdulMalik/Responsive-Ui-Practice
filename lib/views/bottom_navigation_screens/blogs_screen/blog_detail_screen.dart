import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../models/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class BlogDetailScreen extends StatelessWidget {
  const BlogDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: [
        SizedBox(
          height: 242.h,
          width: 400.w,
          child: Stack(
            children: [
              Positioned(
                top: 0.sp,
                child: Container(
                  height: 249.h,
                  width: 414.w,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                  ),
                  child: Image.asset(
                    'assets/images/blog.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                  top: 30.sp,
                  left: 24.sp,
                  child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: AppColors.whiteColor,
                      ))),
              Positioned(
                bottom: 25.sp,
                right: 50.sp,
                child: Icon(
                  Icons.remove_red_eye,
                  color: AppColors.whiteColor,
                ),
              ),
              Positioned(
                  bottom: 30.sp,
                  right: 20.sp,
                  child: Text(
                    '609',
                    style: TextStyle(
                      color: AppColors.whiteColor,
                    ),
                  ))
            ],
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
            margin: EdgeInsets.only(left: 20.sp),
            child: Text('For or against the separate\nwaste collection',style: TextStyle(
          color: AppColors.blckColor,
          fontSize: 24.sp,
          fontWeight: FontWeight.bold,
        ),)),
            SizedBox(
              height: 20.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 20.sp),
              child: Text('There are many variations of passages of\nLorem Ipsum available,'
                  ' but the majority\nhave suffered alteration in some form.',style: GoogleFonts.roboto(
                fontSize: 19.sp,
                fontStyle:FontStyle.italic,
              ),),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 20.sp),
              child: Text('There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, '
                  'or randomised words which don t look even slightly believable. '
                  'If you are going to use a passage of Lorem Ipsum, you need to be sure there isn t anything embarrassing '
                  'hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, '
                  'making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, '
                  'to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour,'
                  ' or non-characteristic words etc.',
                style: GoogleFonts.roboto(
                fontSize: 20.sp,
                  color: AppColors.Textfieldcolor,
              ),),
            ),
            Image.asset('assets/images/blogpic2.png'),
            SizedBox(height: 25.h,),
            Container(
              margin: EdgeInsets.only(left: 20.sp),
              child: Text('There are many variations of passages of Lorem Ipsum available,'
                  ' but the majority have '
                  'suffered alteration in some form, by injected humour, or randomised '
                  'words which don t look even slightly believable. If you are going to use a passage of ',
                style: GoogleFonts.roboto(
                fontSize: 19.sp,
              ),),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 41.h,
              width: 1.sw,
              color: Color(0xffA0C1B1),
              child: Row(
                children: [
                  Expanded(child: Icon(Icons.access_alarm,color: AppColors.blckColor,),),
                  Expanded(
                      flex: 3,
                      child:Text('3 month ago'),),
                  Expanded(
                      flex: 3,
                      child: Text('Source: ekopak.bg',style: GoogleFonts.roboto(
                    color: AppColors.blckColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.sp,
                  ),))
                ],
              ),
            ),
      ]),
    );
  }
}
