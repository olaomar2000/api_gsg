import 'package:fahras/values/colors.dart';
import 'package:fahras/values/styles.dart';
import 'package:fahras/widget/listTile_profile.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class profile_screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundCard,
        body: Padding(
          padding:EdgeInsets.symmetric(horizontal: 16,vertical: 7),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
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
                    Text('حسابي',style: screen_name,),
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
                Center(child: Text('فهرس',style: splash_title,)),
                Container(
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
                      listTile_profile('passwoed_icon','تغيير كلمة المرور'),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Divider(thickness: 0.5,color: Colors.grey,),
                      ),
                      listTile_profile('lan_icon','اللغة'),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Divider(thickness: 0.5,color: Colors.grey,),
                      ),
                      listTile_profile('fav_icon','المفضلة'),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Divider(thickness: 0.5,color: Colors.grey,),
                      ),
                      listTile_profile('map_icon','الشركات القريبة '),



                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
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
                      listTile_profile('used_icon','شروط الاستخدام'),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Divider(thickness: 0.5,color: Colors.grey,),
                      ),
                      listTile_profile('aboutApp_icon','عن التطبيق'),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Divider(thickness: 0.5,color: Colors.grey,),
                      ),
                      listTile_profile('cellus_icon','تواصل معنا'),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Divider(thickness: 0.5,color: Colors.grey,),
                      ),
                      listTile_profile('logout_icon','تسجيل خروج '),



                    ],
                  ),
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }

}