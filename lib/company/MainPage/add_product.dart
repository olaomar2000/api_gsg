import 'dart:io';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:fahras/auth/login_company.dart';
import 'package:fahras/get/app_get.dart';
import 'package:fahras/server.dart';
import 'package:fahras/values/colors.dart';
import 'package:fahras/values/styles.dart';
import 'package:fahras/widget/back_icon.dart';
import 'package:fahras/widget/custom_button.dart';
import 'package:fahras/widget/custom_card_category.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AddProduct extends StatefulWidget {
  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  File file;
  int selectedType ;
  List<int> selected=[] ;

  setSelectedType(int value) {
    this.selectedType = value;

    setState(() {});

  }
  setSelectedIndex(int value) {

  if(selected.contains(value)){
    selected.remove(value);
  }else {
    selected.add(value);
  }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final Namecontroller = TextEditingController();
    final Descontroller = TextEditingController();
    final priceController = TextEditingController();


    Appget appGet = Get.find();

    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: () => Scaffold(
        backgroundColor: backgroundCard,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
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
                      Text(
                        'منتج جديد',
                        style: screen_name,
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
                    ],
                  ),
                ),
                Column(
                  children: [
                    Stack(
                      children: [
                        DottedBorder(
                          color: AppColor1,
                          dashPattern: [8, 4],
                          borderType: BorderType.RRect,
                          strokeWidth: 1,
                          radius: Radius.circular(16),
                          child: InkWell(
                            onTap: () async{

                              PickedFile imageFile =
                              await ImagePicker().getImage(source: ImageSource.gallery);

                             this.file = File(imageFile.path);
                              setState(() {
                              print(file.toString());
                              });
                            },
                            child: this.file == null ?Container(
                              height: 127.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Colors.white),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/images/upload.png'),
                                    Text(
                                      'أضف صور للعمل',
                                      style: TextStyle(
                                          fontSize: 12.sp, color: Colors.black),
                                    ),
                                    Text(
                                      'رجاء قم بإضافة صورة بجودة عالية',
                                      style: TextStyle(
                                          fontSize: 10.sp, color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                            ): Image.file(this.file ,height: 127.h,width: double.infinity,fit:BoxFit.cover,),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('تصنيف الشركة'),
                          Container(
                            height: 40.h,
                            child: TextField(
                              decoration: InputDecoration(
                                prefixIcon: InkWell(
                                  onTap: () {
                                    showModalBottomSheet(
                                        useRootNavigator: true,
                                        isScrollControlled: true,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20)),
                                        ),
                                        backgroundColor: Colors.white,
                                        context: context,
                                        builder: (context) {
                                          return StatefulBuilder(builder:
                                              (BuildContext context,
                                                  StateSetter
                                                      setState /*You can rename this!*/) {
                                            return Container(
                                              height: 706,
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: backgroundCard,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.1),
                                                    spreadRadius: 5,
                                                    blurRadius: 7,
                                                    offset: Offset(0, 1),
                                                  ),
                                                ],
                                              ),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    'اختر تصنيف الشركة الخاصة بكم',
                                                    style: splash1_desc2,
                                                  ),
                                                  Text(
                                                      'يمكنك تحديد خيارات بحد اقصى'),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 16.0),
                                                    child: Container(
                                                      height: 580.h,
                                                      child: GridView.builder(
                                                        itemCount: 12,
                                                        gridDelegate:
                                                            SliverGridDelegateWithFixedCrossAxisCount(
                                                                crossAxisCount:
                                                                    3,
                                                                crossAxisSpacing:
                                                                    25.0,
                                                                mainAxisSpacing:
                                                                    15.0),
                                                        itemBuilder:
                                                            (BuildContext
                                                                    context,
                                                                int index) {
                                                          return InkWell(
                                                            onTap: () {
                                                              setState(() {});

                                                              setSelectedType(
                                                                  index);

                                                              setSelectedIndex(index);
                                                            },
                                                            child: Stack(
                                                              children: [
                                                                Container(
                                                                  height: 97,
                                                                  width: 105,
                                                                  child: Card(
                                                                    color: selected.contains(index) ==true

                                                                        ? AppColor1
                                                                        : Colors
                                                                            .white,
                                                                    shape:
                                                                        RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              20),
                                                                    ),
                                                                    child:
                                                                        Column(
                                                                      children: [
                                                                        Padding(
                                                                          padding:
                                                                              EdgeInsets.only(top: 1.0),
                                                                          child:
                                                                              SvgPicture.asset(
                                                                            'assets/images/categroy.svg',
                                                                            height:
                                                                                64,
                                                                            width:
                                                                                83,
                                                                          ),
                                                                        ),
                                                                        Text(
                                                                            'مطابخ'),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                selected.contains(index) ==true
                                                                    ? Container(
                                                                        height:
                                                                            105,
                                                                        width:
                                                                            105,
                                                                        child: Align(
                                                                            alignment: Alignment.bottomLeft,
                                                                            child: Container(
                                                                                height: 25,
                                                                                width: 25,
                                                                                decoration: BoxDecoration(color: Colors.black.withOpacity(.5), borderRadius: BorderRadius.all(Radius.circular(5))),
                                                                                child: Center(
                                                                                  child: Icon(
                                                                                    Icons.check,
                                                                                    color: Colors.white,
                                                                                  ),
                                                                                ))))
                                                                    : Container(),
                                                              ],
                                                            ),
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                  custom_button(
                                                    height_btn: 40.h,
                                                    width_btn: 325.w,
                                                    text: 'متابعة',
                                                    background: AppColor1,
                                                    Radius: 10,
                                                    textColor: Colors.white,
                                                  ),
                                                ],
                                              ),
                                            );
                                          });
                                        });
                                  },
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.grey,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                          ),
                          Text('اسم المنتج'),
                          Container(
                            height: 40,
                            child: TextField(
                              controller: Namecontroller,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                          ),
                          Text('وصف المنتج'),
                          Container(
                            child: TextField(
                              controller: Descontroller,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                          ),
                          Text(' سعر المنتج'),
                          Container(
                            height: 40,
                            child: TextField(
                              controller: priceController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    custom_button(
                      height_btn: 40.h,
                      width_btn: 325.w,
                      text: 'إضافة',
                      background: AppColor1,
                      Radius: 10,
                      textColor: Colors.white,
                      onPress: () {
                        ServerUser.serverUser.addProduct(Namecontroller.text , "1", priceController.text, Descontroller.text,this.file);
                      },
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                  ],
                ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
