import 'package:fahras/values/colors.dart';
import 'package:fahras/values/styles.dart';
import 'package:fahras/widget/custom_Card.dart';
import 'package:fahras/widget/custom_button.dart';
import 'package:flutter/material.dart';


class login_Screen extends StatelessWidget {
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
              height: 500,
              width: double.infinity,
              child: Column(
                children: [
                  Text(
                    'فهرس',
                    style: splash_title2,
                  ),
                  SizedBox(height: 20),

                  Text(
                    'يرجى تحديد نوع الحساب',
                    style: splash1_desc2,
                  ),

                  SizedBox(height: 15),
                  Text('تمتلك حساب بالفعل'),
                  SizedBox(height: 17),
                  custom_button(
                    height_btn: 40,
                    width_btn: 325,
                    text: 'تسجيل الدخول',
                    background: AppColor1,
                    Radius: 10,
                    textColor: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
