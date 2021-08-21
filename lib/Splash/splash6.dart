import 'package:fahras/values/colors.dart';
import 'package:fahras/values/styles.dart';
import 'package:fahras/widget/custom_Card.dart';
import 'package:fahras/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'choose_language.dart';

class splash6_Screen extends StatelessWidget {
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
              height: 575,
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(height: 24),
                  Text(
                    'تم التأكد من رقم الجوال',
                    style: splash1_desc,
                  ),
                  SizedBox(height: 22),
                  SvgPicture.asset(
                    'assets/images/phonenum.svg',
                    height: 240,
                    width: 334,
                  ),
                  SizedBox(height: 35),
                  Text(
                    'اهلا بكم في تطبيق فهرس',
                    style: splash1_desc2,
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
