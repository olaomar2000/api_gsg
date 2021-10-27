import 'dart:async';
import 'package:fahras/Splash/choose_language.dart';

import 'package:fahras/server.dart';
import 'package:fahras/values/colors.dart';
import 'package:fahras/values/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class splash_screen extends StatefulWidget {
  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () async {
     ServerUser.serverUser.getHomeUser();

     ServerUser.serverUser.getAllVendors();
     ServerUser.serverUser.getallCategory();


      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => chooseLan_Screen()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return
      ScreenUtilInit(
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
                )
            ),
          ),
          Center(
            child: Column(
              children: [
              Text('فهرس',style: splash_title,),
              Text('دليل كل ما يتعلق بعالم البناء',style: splash_desc,),
            ],),
          ),

        ],

      ),
    ));
  }
}
