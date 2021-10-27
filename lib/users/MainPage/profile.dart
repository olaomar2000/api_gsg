import 'fav.dart';
import 'package:fahras/values/colors.dart';
import 'package:fahras/values/styles.dart';
import 'package:fahras/widget/listTile_profile.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundCard,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: 348,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      'assets/images/profile_header.png',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 22.0,right:16 ,left: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 41,
                      width: 41,
                      decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(6),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),

                      child:
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset('assets/images/notifications_icon.svg',),
                      ),
                    ),
                    Text('حسابي',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                    Container(
                      height: 41,
                      width: 41,
                      decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(6),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                      child:Icon(
                        Icons.arrow_forward,
                        color: blackColor,
                        size: 26.0,
                      ),
                    ),
                  ],
                ),
              ),

               Padding(
                 padding: const EdgeInsets.only(top: 20),
                 child: Center(child: Text('فهرس',style: splash_title,)),
               ),

              Padding(
                padding: const EdgeInsets.only(top: 200,left: 16,right: 16),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                     listTile_profile('password_profile','تغيير كلمة المرور'),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Divider(thickness: 0.5,color: Colors.grey,),
                      ),
                     listTile_profile('lan_profile','اللغة'),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Divider(thickness: 0.5,color: Colors.grey,),
                      ),
                      listTile_profile('fav_profile','المفضلة'),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Divider(thickness: 0.5,color: Colors.grey,),
                      ),
                     listTile_profile('loaction_profile','الشركات القريبة '),

                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 480,left: 16,right: 16),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                     listTile_profile('used_profile','شروط الاستخدام'),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Divider(thickness: 0.5,color: Colors.grey,),
                      ),
                      listTile_profile('about_profile','عن التطبيق'),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Divider(thickness: 0.5,color: Colors.grey,),
                      ),
                      listTile_profile('call_profile','تواصل معنا'),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Divider(thickness: 0.5,color: Colors.grey,),
                      ),
                     listTile_profile('logout_profile','تسجيل خروج '),

                    ],
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