import 'package:localize_and_translate/localize_and_translate.dart';

import '../auth/login.dart';
import 'package:fahras/Splash/chose_account.dart';
import '../users/MainPage/bottom_bar.dart';
import 'package:fahras/values/colors.dart';
import 'package:fahras/values/styles.dart';
import 'package:fahras/widget/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'choose_language.dart';

class splash1_Screen extends StatelessWidget {
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
              height: 521.h,
              width: double.infinity,
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  children: [
                    Text(
                      'logo'.tr(),
                      style: splash_title2,
                    ),
                    SizedBox(height: 27.h),
                    Text(
                      'welcome'.tr(),
                      style: splash1_desc,
                    ),
                    Text(
                      'splash'.tr(),
                      style: splash1_desc2,
                    ),
                    SizedBox(height: 47.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 140.w,
                          height: 40.h,
                          child: RaisedButton(
                            child: Text('singup'.tr(), style: splash_btn),
                            textColor: AppColor1,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            color: whiteColor,
                            hoverColor: AppColor1,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => splash2_Screen()),
                              );
                            },
                          ),
                        ),
                        SizedBox(width: 45.w),
                        SizedBox(
                          width: 140.w,
                          height: 40.h,
                          child: RaisedButton(
                            child: Text('login'.tr(), style: splash_btn),
                            textColor: whiteColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            color: AppColor1,
                            hoverColor: AppColor1,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => login_Screen()),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 18.h),
                    Row(
                      children: [
                        Expanded(child:Divider(thickness: 0.5,color: Colors.grey,) ),
                        Text('  أو ',style: TextStyle(fontSize: 12,color: Colors.grey,fontWeight: FontWeight.bold),),
                        Expanded(child:Divider(thickness: 0.5,color: Colors.grey,) ),
                      ],
                    ),
                    SizedBox(height: 18.h,),
                    custom_button(
                      height_btn: 40.h,
                      width_btn: 325.w,
                      text: 'vistor'.tr(),
                      textColor: AppColor1,
                      Radius: 10,
                      background: Colors.white,
                      onPress: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      ));
  }
}
