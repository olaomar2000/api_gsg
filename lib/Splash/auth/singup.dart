import 'package:country_code_picker/country_code_picker.dart';
import 'package:fahras/values/colors.dart';
import 'package:fahras/values/styles.dart';
import 'package:fahras/widget/back_icon.dart';
import 'package:fahras/widget/custom_Card.dart';
import 'package:fahras/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class singup_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375,812),
      builder:()=> Scaffold(
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
                height: 559,
                width: double.infinity,
                child: Column(
                  children: [
                    Text(
                      'فهرس',
                      style: splash_title2,
                    ),

                    Text(
                      'إنشاء حساب جديد',
                      style: splash1_desc2,
                    ),
                    Text(
                      'قم بإدخال رقم الجوال الخاص بك ',
                      style: splash_desc2,
                    ),
                    SizedBox(height: 32),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 25.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                        Text('رقم الجوال'),
                        Container(
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                              suffix: CountryCodePicker(
                                onChanged: print,
                                initialSelection: 'IT',
                                favorite: ['+39', 'FR'],
                                showCountryOnly: false,
                                showOnlyCountryWhenClosed: false,
                                alignLeft: false,
                              ),
                              prefix: Icon(
                                Icons.phone,
                                color: AppColor1,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ),

                        Text('كلمة المرور'),
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

                          CheckboxListTile(value: false,

                            onChanged: (value){

                            },title: Text('أوافق على شروط الخدمات وسياسة الخصوصية'),)

                      ],),
                    ),
                    //TODO textFiled phonenumber && password

       SizedBox(height: 45,),
                    custom_button(
                      height_btn: 40,
                      width_btn: 325,
                      text: 'متابعة',
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
      ),
    );
  }
}
