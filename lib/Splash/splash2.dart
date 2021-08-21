import 'package:fahras/users/man/pages/home.dart';
import 'package:fahras/values/colors.dart';
import 'package:fahras/values/styles.dart';
import 'package:fahras/widget/back_icon.dart';
import 'package:fahras/widget/custom_Card.dart';
import 'package:fahras/widget/custom_button.dart';
import 'package:flutter/material.dart';
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
                  Text(
                    'فهرس',
                    style: splash_title2,
                  ),
                  SizedBox(height: 20),

                  Text(
                    'يرجى تحديد نوع الحساب',
                    style: splash1_desc2,
                  ),
                  SizedBox(height: 18),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                          onTap:(){
                            print("Ddddddddddd");
                            setType(1);

                          },
                          child:
                          Card(
                            color: type==1 ?AppColor1: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),

                            ),
                            child:Column(
                              children: [
                                Padding(
                                  padding:  EdgeInsets.only(top: 13.0),
                                  child: SvgPicture.asset('assets/images/man.svg'),
                                ),
                                Text("worker")
                              ],
                            ) ,

                          ),
                         // custom_Card(123,115,30,'صاحب الخدمة','worker',type,typeSelected)
                      ),
                      SizedBox(width: 30),
                      InkWell(
                          onTap:(){
                            print("fffffffffffffff");
                            setType(2);

                          },child:
                      Card(
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
                            Text("User")
                          ],
                        ) ,

                      ),
                      //custom_Card(123,115,30,'مستخدم','man',type,typeSelected)
                      ),
                    ],
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
                    onPress: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => home_screen()),
                      );
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
