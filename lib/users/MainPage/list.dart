import 'package:fahras/get/app_get.dart';
import 'package:fahras/server.dart';
import 'package:fahras/values/constant.dart';
import 'package:get/get.dart';
import '../company/company1.dart';
import 'package:fahras/values/colors.dart';
import 'package:fahras/widget/company_card.dart';
import 'package:fahras/widget/custom_card_category2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class list_screen extends StatefulWidget {
  @override
  State<list_screen> createState() => _list_screenState();
}

class _list_screenState extends State<list_screen> {
  int selectedType = 0;
  int selectedType2 = 0;

  setSelectedType(int value) {
    this.selectedType = value;
    setState(() {});
  }

  setSelectedType2(int value) {
    this.selectedType2 = value;
    setState(() {});
  }

  int type = 1;

  List<String> item2 = [
    'الكل',
    'أبواب داخلية ',
    'أبواب خارجية ',
    'أبواب أتوماتيكية',
  ];

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
                    SvgPicture.asset(
                      'assets/images/ads.svg',
                      height: 100.h,
                      width: double.infinity,
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            this.type = 1;
                            setState(() {});
                          },
                          child: Container(
                            height: 26.h,
                            width: 72.w,
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
                    Container(
                      height: 45.h,
                      child: ListView.builder(
                          itemCount: 3,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                setSelectedType(index);
                                ServerUser.serverUser.getVendorsByCategory(
                                    appGet.allCategoryMap.value['data'][index]
                                        ['id']);
                              },
                              child: Container(
                                margin: EdgeInsets.all(5),
                                height: 26,
                                width: 72,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: selectedType == index
                                      ? AppColor1
                                      : Colors.white,
                                ),
                                child: Center(
                                    child: Text(
                                        '${appGet.allCategoryMap.value['data'][index]['name']}')),
                              ),
                            );
                          }),
                    ),
                    selectedType >= 0 && type == 2
                        ? Container(
                            height: 45.h,
                            child: ListView.builder(
                                itemCount: item2.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (BuildContext context, int index) {
                                  return InkWell(
                                    onTap: () {
                                      setSelectedType2(index);
                                    },
                                    child: Container(
                                      margin: EdgeInsets.all(5),
                                      height: 26,
                                      width: 88,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: selectedType2 == index
                                            ? AppColor1
                                            : Colors.white,
                                      ),
                                      child: Center(child: Text(item2[index])),
                                    ),
                                  );
                                }),
                          )
                        : SizedBox(
                            height: 2,
                          ),
                    Container(
                      height: selectedType > 0 && type == 2 ? 450 : 450,
                      child: this.type == 1
                          ? ListView.builder(
                              itemCount: appGet.VendersByCategoryMap
                                  .value['data']['vendors'].length,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (BuildContext context, int index) {
                                return InkWell(
                                  onTap: () {
                                    ServerUser.serverUser.getVendorWorks(appGet
                                        .VendersByCategoryMap
                                        .value['data']['vendors'][index]['id']);
                                    ServerUser.serverUser.getVendorDetails(
                                        appGet.VendersByCategoryMap
                                                .value['data']['vendors'][index]
                                            ['id']);
                                    ServerUser.serverUser.getProductByVendor(
                                        appGet.VendersByCategoryMap
                                                .value['data']['vendors'][index]
                                            ['id']);
                                    // ServerUser.serverUser.addToWishList(appGet.VendersByCategoryMap.value['data']['vendors'][index]['id']);
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              company_Screen()),
                                    );
                                  },
                                  child: company_card(
                                      name:
                                          '${appGet.VendersByCategoryMap.value['data']['vendors'][index]['name']}',
                                      address:
                                          '${appGet.VendersByCategoryMap.value['data']['vendors'][index]['address']}',
                                      isfav: appGet.VendersByCategoryMap
                                              .value['data']['vendors'][index]
                                          ['isFavorit'],
                                      rate: appGet.VendersByCategoryMap
                                              .value['data']['vendors'][index]
                                          ['rate'],
                                      image: appGet.VendersByCategoryMap
                                              .value['data']['vendors'][index]
                                          ['logo_url'],
                                      onTap: () {
                                        for (var i in appGet.wishListMap
                                            .value['data']['vendors']) {
                                          if (i['vendor_id'] ==
                                              appGet
                                                  .VendersByCategoryMap
                                                  .value['data']['vendors']
                                                      [index]['id']
                                                  .toString()) {
                                            print('done');
                                            ServerUser.serverUser
                                                .RemoveFromWishlist(appGet
                                                        .VendersByCategoryMap
                                                        .value['data']
                                                    ['vendors'][index]['id']);
                                          } else {
                                            print('nooo');
                                            ServerUser.serverUser.addToWishList(
                                                appGet.VendersByCategoryMap
                                                        .value['data']
                                                    ['vendors'][index]['id']);
                                          }
                                        }

                                        if (appGet.wishListMap
                                            .value['data']['vendors'].isEmpty) {
                                          print('empty');
                                          ServerUser.serverUser.addToWishList(
                                              appGet.VendersByCategoryMap
                                                      .value['data']['vendors']
                                                  [index]['id']);

                                        }
                                      }),
                                );
                              })
                          : GridView.builder(
                              itemCount: 3,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 17.0,
                                      mainAxisSpacing: 16.0),
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: custom_Card_Category2(
                                    image: 'companyImage',
                                    name: 'aaaaaaaaaaaa',
                                    price: "150",
                                  ),
                                );
                              },
                            ),
                    ),
                  ],
                ),
              ),
            ));
  }
}
