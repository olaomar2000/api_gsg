import 'package:fahras/values/colors.dart';
import 'package:fahras/values/styles.dart';
import 'package:fahras/widget/back_icon.dart';
import 'package:fahras/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class password_screen extends StatelessWidget {
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
              height: 500,
              width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 25),
                    child: Image.asset(
                      'assets/images/password.png',
                      height: 87,
                      width: 121,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'إعادة تعيين كلمة المرور',
                    style: splash1_desc2,
                  ),
                  Text(
                    'تم التحقق من رقم الجوال الخاص بك\nيمكنك الآن إعادة تعيين كلمة المرور ',
                    style: splash_desc2,
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('كلمة المرور الجديدة'),
                          Container(
                            height: 40,
                            child: TextField(
                              decoration: InputDecoration(
                                prefix: Icon(
                                  Icons.lock,
                                  color: AppColor1,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                          ),
                          Text('تأكيد كلمة المرور'),
                          Container(
                            height: 40,
                            child: TextField(
                              decoration: InputDecoration(
                                prefix: Icon(
                                  Icons.lock,
                                  color: AppColor1,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
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
