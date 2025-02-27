import 'dart:async';

import 'package:fahras/Splash/confirm_done.dart';
import 'package:fahras/get/app_get.dart';
import 'package:get/get.dart';
import '../users/MainPage/home.dart';
import 'package:fahras/values/colors.dart';
import 'package:fahras/values/styles.dart';
import 'package:fahras/widget/back_icon.dart';
import 'package:fahras/widget/custom_Card.dart';
import 'package:fahras/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'choose_language.dart';

class splash4_Screen extends StatefulWidget {
  @override
  State<splash4_Screen> createState() => _splash4_ScreenState();
}

class _splash4_ScreenState extends State<splash4_Screen> {
  TextEditingController textEditingController = TextEditingController();

  StreamController<ErrorAnimationType> errorController;


  bool hasError = false;
  String currentText = "";
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    errorController.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Appget appGet = Get.find();
    print(appGet.registerMap.value['otp'].toString());
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: () => Scaffold(
        body: SafeArea(
          child: Stack(
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
                    color: backgroundCard,
                  ),
                  height: 706.h,
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 40.h),
                          child: Image.asset(
                            'assets/images/splash4.png',
                            height: 118.h,
                            width: 166.w,
                          ),
                        ),
                        Text(
                          'تأكيد رقم الجوال',
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              color: AppColor1),
                        ),
                        Text(
                          'تم إرسال رمز مكون من   أرقام إلى\n رقم 0000000000000(تغيير)',
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              color: blackColor),
                        ),
                        SizedBox(
                          height: 18.h,
                        ),
                        Form(
                          key: formKey,
                          child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 18.h, horizontal: 43.w),
                              child: PinCodeTextField(
                                appContext: context,
                                pastedTextStyle: TextStyle(
                                  color: AppColor1,
                                  fontWeight: FontWeight.bold,
                                ),
                                length: 6,
                                blinkWhenObscuring: true,
                                animationType: AnimationType.fade,
                                validator: (v) {
                                  /*
                                  if (v.length < 3) {
                                    return "I'm from validator";
                                  } else {
                                    return null;
                                  }*/
                                },
                                pinTheme: PinTheme(
                                  shape: PinCodeFieldShape.box,
                                  borderRadius: BorderRadius.circular(5),
                                  fieldHeight: 50,
                                  fieldWidth: 40,
                                  activeColor: Colors.white,
                                  activeFillColor: Colors.white,
                                  inactiveFillColor: Colors.white,
                                  inactiveColor: Colors.white,
                                  selectedColor: AppColor1,
                                  selectedFillColor: Colors.white,
                                ),
                                cursorColor: Colors.black,
                                animationDuration: Duration(milliseconds: 300),
                                enableActiveFill: true,
                                errorAnimationController: errorController,
                                controller: textEditingController,
                                keyboardType: TextInputType.number,
                                boxShadows: [
                                  BoxShadow(
                                    offset: Offset(0, 1),
                                    color: Colors.black12,
                                    blurRadius: 10,
                                  )
                                ],
                                onCompleted: (v) {
                                  print("Completed");
                                  currentText = v;
                                  print(v);
                                },
                                onChanged: (value) {
                                  print(value);
                                  // setState(() {
                                  //   currentText = value;
                                  // });
                                },
                                beforeTextPaste: (text) {
                                  print("Allowing to paste $text");

                                  return true;
                                },
                              )),
                        ),
                        Text(
                          'ألم تتلقى رمز ؟',
                          style: splash_btn,
                        ),
                        SizedBox(
                          height: 34.h,
                        ),
                        custom_button(
                          height_btn: 40.h,
                          width_btn: 325.w,
                          text: 'تأكيد',
                          background: AppColor1,
                          Radius: 10,
                          textColor: Colors.white,
                          onPress: () {
                            if (appGet.registerMap.value['otp'].toString() ==
                                currentText) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => splash6_Screen()),
                              );
                            }else{
                              print("not correct");
                            }
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => splash6_Screen()),
                            // );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
