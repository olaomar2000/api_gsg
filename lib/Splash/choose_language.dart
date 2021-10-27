import 'package:fahras/Splash/chose_login.dart';
import 'package:fahras/values/colors.dart';
import 'package:fahras/values/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class chooseLan_Screen extends StatefulWidget {
  @override
  State<chooseLan_Screen> createState() => _chooseLan_ScreenState();
}

class _chooseLan_ScreenState extends State<chooseLan_Screen> {
  bool btn1 = false;
  bool btn2 = false;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375,812),
    builder:()=>
      Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColor1,
                AppColor2,
              ],
            )),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0)),
                color: Colors.white,
              ),
              height: 407.h,
              width: double.infinity,
              child: Column(
                children: [
                  Text(
                    'فهرس',
                    style: splash_title2,
                  ),
                  SizedBox(height: 27.h),
                  Text(
                    'الرجاء اختار اللغة المفضلة لديك',
                    style: splash_desc2,
                  ),
                  Text(
                    'Please Select Your Preferred  language',
                    style: splash_desc2,
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 140.w,
                        child: RaisedButton(
                          child: Text('ENGLISH', style: splash_btn),
                          textColor: blueColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          color: btn1 ? AppColor1 : whiteColor,
                          hoverColor: AppColor1,
                          onPressed: () {
                            translator.setNewLanguage(
                              context,
                              newLanguage:  'en' ,
                              remember: true,
                              restart: true,
                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => splash1_Screen()),
                            );
                          },
                        ),
                      ),
                      SizedBox(width: 30.w),
                      SizedBox(
                        width: 140.w,
                        child: RaisedButton(
                          child: Text('عربي', style: splash_btn),
                          textColor: blueColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          onPressed: () {
                            translator.setNewLanguage(
                              context,
                              newLanguage: 'ar',
                              remember: true,

                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => splash1_Screen()),
                            );
                          },
                          color: btn2 ? AppColor1 : whiteColor,
                          hoverColor: AppColor1,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

