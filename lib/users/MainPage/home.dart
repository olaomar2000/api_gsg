import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:fahras/get/app_get.dart';
import 'package:fahras/sp_helper.dart';
import 'package:fahras/values/colors.dart';
import 'package:fahras/values/styles.dart';
import 'package:fahras/widget/custom_card.dart';
import 'package:fahras/widget/custom_card_category.dart';
import 'package:fahras/widget/slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:fahras/values/constant.dart';
import '../../server.dart';

class home_screen extends StatefulWidget {
  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {

    Appget appGet = Get.find();
    return ScreenUtilInit(
        designSize: Size(375, 812),
        builder: () => SafeArea(
              child: Scaffold(
                backgroundColor: backgroundCard,
                body: Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.w, vertical: 16.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 41.h,
                            width: 41.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
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
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SvgPicture.asset(
                                'assets/images/notifications_icon.svg',
                              ),
                            ),
                          ),
                          Container(
                            height: 41.h,
                            width: 281.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
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
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      'assets/images/ads.png',
                      height: 100.h,
                      width: double.infinity,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 100,
                      child: ListView.builder(
                          itemCount: 3,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Image.network(imageUrl+ appGet.homeUserMap.value['data']['sliders'][index]['image_url'],width: 140,);
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'شاهد الكل',
                            style: TextStyle(fontSize: 13.sp, color: AppColor1),
                          ),
                          Text(
                            'التصنيفات',
                            style: splash_desc2,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Container(
                        height: 417.h,
                        child: GridView.builder(
                          itemCount: appGet.homeUserMap.length+1,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 25.0,
                                  mainAxisSpacing: 15.0),
                          itemBuilder: (BuildContext context, int index) {

                            return custom_Card_Category(
                                heightCard: 97,
                                widthCard: 105,
                                Radius: 20,
                                category: '${appGet.homeUserMap.value['data']['categories'][index]['name']}',
                                image: appGet.homeUserMap.value['data']['categories'][index]['image_url']);
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ));
  }
}
