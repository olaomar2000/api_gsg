import 'package:fahras/auth/singup_company.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

import '../auth/login.dart';
import '../auth/singup.dart';
import '../users/MainPage/bottom_bar.dart';
import '../users/MainPage/home.dart';
import 'package:fahras/values/colors.dart';
import 'package:fahras/values/styles.dart';
import 'package:fahras/widget/back_icon.dart';
import 'package:fahras/widget/custom_Card.dart';
import 'package:fahras/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'choose_language.dart';

class splash2_Screen extends StatefulWidget {

  @override
  State<splash2_Screen> createState() => _splash2_ScreenState();
}

class _splash2_ScreenState extends State<splash2_Screen> {
  int type=3;

  setType(int value){
    this.type=value;
    setState(() {

    });
  }
  int typeSelected = 0;

  settype2(int value){
    this.typeSelected=value;
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375,812),
    builder:()=>
      SafeArea(
        child: Scaffold(
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
            back(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30.0),
                      topLeft: Radius.circular(30.0)),
                  color: Colors.white,
                ),
                height: 500.h,
                width: double.infinity,
                child: Column(
                  children: [
                    Text(
                      'logo'.tr(),
                      style: splash_title2,
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      'type'.tr(),
                      style: splash1_desc2,
                    ),
                    SizedBox(height: 18.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                            onTap:(){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SingupCompany()),
                              );
                              setType(1);
                            },
                            child:
                            Container(
                              height: 123.h,
                              width: 140.w,
                              child: Card(

                                color: type==1 ?AppColor1: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),

                                ),
                                child:Column(
                                  children: [
                                    Padding(
                                      padding:  EdgeInsets.only(top: 13.0),
                                      child: SvgPicture.asset('assets/images/worker.svg'),
                                    ),
                                    Text("worker".tr())
                                  ],
                                ) ,

                              ),
                            ),
                           // custom_Card(123,115,30,'صاحب الخدمة','worker',type,typeSelected)
                        ),
                        SizedBox(width: 30.w),
                        InkWell(
                            onTap:(){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SingupCompany()),
                              );
                              setType(2);

                            },child:
                        Container(
                          height: 123.h,
                          width: 140.w,
                          child: Card(
                            color: type==2? AppColor1 : Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),

                            ),
                            child:Column(
                              children: [
                                Padding(
                                  padding:  EdgeInsets.only(top: 13.0),
                                  child: SvgPicture.asset('assets/images/man.svg'),
                                ),
                                Text("user".tr())
                              ],
                            ) ,

                          ),
                        ),
                        //custom_Card(123,115,30,'مستخدم','man',type,typeSelected)
                        ),
                      ],
                    ),
                    SizedBox(height: 15.h),
                    Text('haveAcount'.tr()),
                    SizedBox(height: 17.h),
                    custom_button(
                      height_btn: 40.h,
                      width_btn: 325.w,
                      text: 'login'.tr(),
                      background: AppColor1,
                      Radius: 10,
                      textColor: Colors.white,
                      onPress: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => login_Screen()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        ),
      ) );
  }
}
