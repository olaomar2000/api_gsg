import 'package:localize_and_translate/localize_and_translate.dart';

import '../auth/login.dart';
import 'package:fahras/values/colors.dart';
import 'package:fahras/values/styles.dart';
import 'package:fahras/widget/custom_Card.dart';
import 'package:fahras/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'choose_language.dart';

class splash6_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 812),
    builder: () =>
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
                color: backgroundCard,
              ),
              height: 575.h,
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(height: 24.h),
                  Text(
                    'phoneDone'.tr(),
                    style: screen_name,
                  ),
                  SizedBox(height: 22.h),
                  SvgPicture.asset(
                    'assets/images/phonenum.svg',
                    height: 240.h,
                    width: 334.w,
                  ),
                  SizedBox(height: 35.h),
                  Text(
                    'welcome'.tr(),
                    style: splash1_desc2,
                  ),
                  SizedBox(height: 38.h),
                  custom_button(
                    height_btn: 40.h,
                    width_btn: 325.w,
                    text: 'login2'.tr(),
                    background: AppColor1,
                    Radius: 10,
                    textColor: Colors.white,
                    onPress: () {
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
      )  );
  }
}


