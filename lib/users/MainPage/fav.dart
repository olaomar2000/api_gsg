import 'package:fahras/get/app_get.dart';
import 'package:fahras/server.dart';
import 'package:fahras/values/colors.dart';
import 'package:fahras/values/styles.dart';
import 'package:fahras/widget/company_card.dart';
import 'package:fahras/widget/custom_card_category2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';


import '../company/company1.dart';

class fav extends StatefulWidget{
  @override
  State<fav> createState() => _favState();
}

class _favState extends State<fav> {

  int type = 1;
  @override
  Widget build(BuildContext context) {
    Appget appGet = Get.find();
    return SafeArea(
        child: Scaffold(
          backgroundColor: blueColor2,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 7),
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
                    Text('المفضلة',style: screen_name,),
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
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        this.type = 1;
                        setState(() {});
                      },
                      child: Container(
                        height: 26,
                        width: 72,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: type == 1 ? AppColor1 : Colors.white,
                        ),
                        child: Center(child: Text('شركات')),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        this.type = 2;
                        setState(() {});
                      },
                      child: Container(
                        height: 26,
                        width: 72,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: type == 2 ? AppColor1 : Colors.white,
                        ),
                        child: Center(child: Text('منتجات')),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  height:680,
                  child: this.type == 1? ListView.builder(
                      itemCount: appGet.wishListMap.value['data']['vendors'].length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => company_Screen()),
                              );
                            },
                            child: company_card(
                              image:appGet.wishListMap.value['data']['vendors'][index]['vendor']['image_url'] ,
                            isfav: appGet.wishListMap.value['data']['vendors'][index]['isFavorit'],
                              name: appGet.wishListMap.value['data']['vendors'][index]['vendor']['name'],
                              address: appGet.wishListMap.value['data']['vendors'][index]['vendor']['address'],
                              rate: appGet.wishListMap.value['data']['vendors'][index]['vendor']['rate'],
                              open:  appGet.wishListMap.value['data']['vendors'][index]['vendor']['isFavorit'],

                            ));
                      }):
                  GridView.builder(
                    itemCount: 6,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 17.0,
                        mainAxisSpacing: 16.0
                    ),
                    itemBuilder: (BuildContext context, int index){
                      return   custom_Card_Category2(image: 'companyImage',isfav: true,);
                    },
                  ),
                ),


              ],
            ),
          ),
        ));
  }
}