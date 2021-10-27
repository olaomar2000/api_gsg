import 'package:fahras/get/app_get.dart';
import 'package:fahras/values/colors.dart';
import 'package:fahras/values/constant.dart';
import 'package:fahras/values/styles.dart';
import 'package:fahras/widget/custom_card_category.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class Company extends StatelessWidget {
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
                Stack(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(top:60),
                      child: Container(
                        height: 159,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 10),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height:28 ,
                                    width: 65,
                                    decoration: BoxDecoration(
                                      color:AppColor1,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                     // crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text('تعديل',style: TextStyle(fontSize: 12,color: Colors.white),),
                                        Container(
                                            height: 10,
                                            width: 10,
                                            child: Icon(Icons.edit,color: Colors.white,)),
                                      ],
                                    )
                                  ),
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/images/timeCompany.svg',
                                        height: 13,
                                        width: 13,
                                      ),
                                Text(appGet.homeCompanyUrl.value['vendor']['work_time'],style: TextStyle(color: Color(0xff67B6FF),fontSize: 14 ,fontWeight: FontWeight.bold),),
                                    ],
                                  ),

                                ],
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 22.0,left: 16,right: 16),
                                child: Divider(thickness: 0.5,color: Colors.grey,),
                              ),
                              Text(appGet.homeCompanyUrl.value['vendor']['name'],style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(appGet.homeCompanyUrl.value['vendor']['address'],style: TextStyle(color: Color(0xff1D1D26),fontSize: 12),),
                                  SizedBox(width: 3,),
                                  SvgPicture.asset(
                                    'assets/images/location2.svg',
                                    height: 11,
                                    width: 7,
                                  ),

                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height:24 ,
                                    decoration: BoxDecoration(
                                      color:Color(0xff5F533D) ,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: RaisedButton(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Text('أبواب داخلية',style:TextStyle(
                                        fontSize: 10,
                                        color: Colors.white,
                                      ),),

                                    ),
                                  ),
                                  SizedBox(width: 6,),
                                  Container(
                                    height:24 ,
                                    decoration: BoxDecoration(
                                      color:Color(0xff931C65) ,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: RaisedButton(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Text('نوافذ',style:TextStyle(
                                        fontSize: 10,
                                        color: Colors.white,
                                      ),),
                                    ),
                                  ),
                                ],
                              ),


                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding:  EdgeInsets.only(top:5),
                        child: Container(
                          height: 115,
                          width: 115,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image:NetworkImage(imageUrl+appGet.homeCompanyUrl.value['vendor']['logo_url'])


                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
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
                      itemCount: appGet.homeCompanyUrl.value['categories'].length,
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
                            category: appGet.homeCompanyUrl.value['categories'][index]['name'],
                            image: appGet.homeCompanyUrl.value['categories'][index]['image_url']);
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
