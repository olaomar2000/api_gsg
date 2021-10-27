import 'package:fahras/company/MainPage/job_company.dart';
import 'package:fahras/company/MainPage/photo_company.dart';
import 'package:fahras/company/MainPage/product_det.dart';
import 'package:fahras/company/MainPage/product_list.dart';
import 'package:fahras/get/app_get.dart';
import 'package:fahras/values/colors.dart';
import 'package:fahras/widget/listtile_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ProfileCompany extends StatefulWidget {
  @override
  State<ProfileCompany> createState() => _ProfileCompanyState();
}

class _ProfileCompanyState extends State<ProfileCompany> {
  int selectedType = 3;

  setSelectedType(int value) {
    this.selectedType = value;
    setState(() {});
  }

  List<String> item = [
    'معرض الصور',
    'أعمالي ',
    'منتجاتي',
  ];

  @override
  Widget build(BuildContext context) {
    Appget appGet = Get.find();
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: 193,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    'assets/images/company1.png',
                  ),
                ),
              ),
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 7),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 41,
                        width: 41,
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
                        height: 41,
                        width: 41,
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
                        child: Icon(
                          Icons.arrow_forward,
                          color: blackColor,
                          size: 26.0,
                        ),
                      ),
                    ])),
            Padding(
              padding: EdgeInsets.only(top: 170),
              child: Container(
                height: 159,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              height: 28,
                              width: 65,
                              decoration: BoxDecoration(
                                color: AppColor1,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'تعديل',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white),
                                  ),
                                  Container(
                                      height: 10,
                                      width: 10,
                                      child: Icon(
                                        Icons.edit,
                                        color: Colors.white,
                                      )),
                                ],
                              )),
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/images/timeCompany.svg',
                                height: 13,
                                width: 13,
                              ),
                              Text(
                                appGet.homeCompanyUrl.value['vendor']['work_time'],
                                style: TextStyle(
                                    color: Color(0xff67B6FF),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 22.0, left: 16, right: 16),
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        appGet.homeCompanyUrl.value['vendor']['name'],
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            appGet.homeCompanyUrl.value['vendor']['address'],
                            style: TextStyle(
                                color: Color(0xff1D1D26), fontSize: 12),
                          ),
                          SizedBox(
                            width: 3,
                          ),
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
                            height: 24,
                            decoration: BoxDecoration(
                              color: Color(0xff5F533D),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                'أبواب داخلية',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Container(
                            height: 24,
                            decoration: BoxDecoration(
                              color: Color(0xff931C65),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                'نوافذ',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
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
                padding: EdgeInsets.only(top: 115),
                child: Container(
                  height: 115,
                  width: 115,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        'assets/images/companyImage.png',
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // Row(
            //   children: [
            //     Container(
            //       height :104,
            //       width: 30,
            //       child: Row(
            //         children: [
            //           Text(item[0]),
            //           Image.asset(name)
            //         ],
            //       ),
            //     ),
            //   ],
            // ),

            Padding(
              padding: const EdgeInsets.only(top: 331),
              child: Container(
                height: 50,
                width: double.infinity,
                child: Center(
                  child: Container(
                    width: 250,
                    child: ListView.builder(
                        itemCount: item.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {
                              setSelectedType(index);
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
                              child: Center(child: Text(item[index])),
                            ),
                          );
                        }),
                  ),
                ),
              ),
            ),
            selectedType == 0
                ? Padding(
                    padding: EdgeInsets.only(top: 379),
                    child: PhotoCompany(isCompany: true),
                  )
                : selectedType == 1
                    ? Padding(
                        padding: EdgeInsets.only(top: 379),
                        child: JobCompany(),
                      )
                    : selectedType == 2
                        ? Padding(
                            padding: EdgeInsets.only(top: 379),
                            child: ProductList(),
                          )
                        : Container(
                            padding: const EdgeInsets.only(
                                top: 380, left: 16, right: 16),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
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
                                        listTile_profile('password_profile',
                                            'تغيير كلمة المرور'),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 40),
                                          child: Divider(
                                            thickness: 0.5,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        listTile_profile(
                                            'lan_profile', 'اللغة'),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 40),
                                          child: Divider(
                                            thickness: 0.5,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        listTile_profile(
                                            'fav_profile', 'المفضلة'),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 40),
                                          child: Divider(
                                            thickness: 0.5,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        listTile_profile('loaction_profile',
                                            'الشركات القريبة '),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
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
                                        listTile_profile(
                                            'used_profile', 'شروط الاستخدام'),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 40),
                                          child: Divider(
                                            thickness: 0.5,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        listTile_profile(
                                            'about_profile', 'عن التطبيق'),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 40),
                                          child: Divider(
                                            thickness: 0.5,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        listTile_profile(
                                            'call_profile', 'تواصل معنا'),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 40),
                                          child: Divider(
                                            thickness: 0.5,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        listTile_profile(
                                            'logout_profile', 'تسجيل خروج '),
                                      ],
                                    ),
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
