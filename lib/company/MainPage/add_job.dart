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

class AddJob extends StatefulWidget {
  @override
  _AddJobState createState() => _AddJobState();
}

class _AddJobState extends State<AddJob> {
  final Namecontroller = TextEditingController();
  final Descontroller = TextEditingController();
  Appget appGet = Get.find();
  File file;
  @override
  Widget build(BuildContext context) {
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
                        'عمل جديد',
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
                              (await ImagePicker().getImage(source: ImageSource.gallery));
                              this.file = File(imageFile.path);
                              setState(() {

                              });
                            },
                            child:this.file == null ? Container(
                              height: 127.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Colors.white),
                              child:  Padding(
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
                          Text(' عنوان العمل'),
                          Container(
                            height: 40,
                            child: TextFormField(
                              controller: Namecontroller,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                          ),
                          Text('وصف  العمل'),
                          Container(
                            child: TextFormField(
                              controller: Descontroller,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                          ),
                          Text(' صور أخرى للعمل '),
                          DottedBorder(
                            color: AppColor1,
                            dashPattern: [8, 4],
                            borderType: BorderType.RRect,
                            strokeWidth: 1,
                            radius: Radius.circular(16),
                            child: Container(
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
                                      'أضف صور ',
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
                        ServerUser.serverUser.addWork(this.Namecontroller.text, this.Descontroller.text,this.file);
                        print(this.file);
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
