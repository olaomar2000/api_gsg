import 'package:fahras/values/colors.dart';
import 'package:fahras/values/styles.dart';
import 'package:fahras/widget/custom_Card.dart';
import 'package:fahras/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'choose_language.dart';

class splash11_Screen extends StatelessWidget {
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
                color: backgroundCard,
              ),
              height: 514,
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(height: 25),
                  SvgPicture.asset(
                    'assets/images/splash11.svg',
                    height: 230,
                    width: 322,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'تمت إعادة تعيين كلمة المرور بنجاح',
                    style: splash_desc2,
                  ),
                  SizedBox(height: 38),
                  custom_button(
                    height_btn: 40,
                    width_btn: 325,
                    text: 'دخول',
                    background: AppColor1,
                    Radius: 10,
                    textColor: Colors.white,
                    onPress: () {
                      //TODO onprees move to login
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => chooseLan_Screen()),
                      // );
                    },
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
