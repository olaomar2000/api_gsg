import 'package:fahras/Splash/splash2.dart';
import 'package:fahras/values/colors.dart';
import 'package:fahras/values/styles.dart';
import 'package:fahras/widget/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'choose_language.dart';

class splash1_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              height: 521,
              width: double.infinity,
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    Text(
                      'فهرس',
                      style: splash_title2,
                    ),
                    SizedBox(height: 27),
                    Text(
                      'أهلا بك في تطبيق فهرس',
                      style: splash1_desc,
                    ),
                    Text(
                      'دليل كل ما يتعلق بعالم البناء',
                      style: splash1_desc2,
                    ),
                    SizedBox(height: 47),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 140,
                          height: 40,
                          child: RaisedButton(
                            child: Text('انشاء حساب جديد', style: splash_btn),
                            textColor: AppColor1,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            color: whiteColor,
                            hoverColor: AppColor1,
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(width: 45),
                        SizedBox(
                          width: 140,
                          height: 40,
                          child: RaisedButton(
                            child: Text('تسجيل الدخول', style: splash_btn),
                            textColor: whiteColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            color: AppColor1,
                            hoverColor: AppColor1,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => splash2_Screen()),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 18),
                    Row(
                      children: [
                        Expanded(child:Divider(thickness: 0.5,color: Colors.grey,) ),
                        Text(' أو ',style: TextStyle(fontSize: 12,color: Colors.grey,fontWeight: FontWeight.bold),),
                        Expanded(child:Divider(thickness: 0.5,color: Colors.grey,) ),
                      ],
                    ),
                    SizedBox(height: 18,),
                    custom_button(
                      height_btn: 40,
                      width_btn: 325,
                      text: 'دخول كزائر',
                      textColor: AppColor1,
                      Radius: 10,
                      background: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
