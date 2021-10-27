import 'package:country_code_picker/country_code_picker.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:fahras/auth/login_company.dart';
import 'package:fahras/values/colors.dart';
import 'package:fahras/values/styles.dart';
import 'package:fahras/widget/back_icon.dart';
import 'package:fahras/widget/custom_button.dart';
import 'package:fahras/widget/custom_card_category.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'main_pageCompany.dart';

class CompanyInfo extends StatefulWidget {
  @override
  _CompanyInfoState createState() => _CompanyInfoState();
}

class _CompanyInfoState extends State<CompanyInfo> {
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
                Text('بيانات الشركة',style: screen_name,),
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
                            child: Container(
                              height: 127.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius:BorderRadius.circular(16),
                                  color: Colors.white
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/images/upload.png'),
                                    Text('أضف صورة غلاف للشركة',style: TextStyle(fontSize: 12.sp,color: Colors.black),),
                                    Text('رجاء قم بإضافة صورة بجودة عالية',style: TextStyle(fontSize: 10.sp,color: Colors.grey),),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:90),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: DottedBorder(
                                color: AppColor1,
                                dashPattern: [8, 4],
                                borderType: BorderType.RRect,
                                strokeWidth: 1,
                                radius: Radius.circular(16),
                                child: Container(
                                  height: 68.h,
                                  width: 68.w,
                                  decoration: BoxDecoration(
                                      borderRadius:BorderRadius.circular(16),

                                      color: Colors.white
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Image.asset('assets/images/upload.png',height: 16.h,width: 26.w,),
                                        Text('شعار الشركة',style: TextStyle(fontSize: 10.sp,color: Colors.black),),
                                      ],
                                    ),
                                  ),

                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [

                            Text('اسم الشركة'),
                            Container(
                              height: 50.h,

                              child: TextField(
                                decoration: InputDecoration(

                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                            ),

                            Text('رقم الجوال'),
                            Container(
                              height: 50.h,
                              child: TextField(
                                decoration: InputDecoration(
                                  suffixIcon: CountryCodePicker(
                                    onChanged: print,
                                    initialSelection: 'IT',
                                    favorite: ['+39', 'FR'],
                                    showCountryOnly: false,
                                    showOnlyCountryWhenClosed: false,
                                    alignLeft: false,
                                  ),

                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                            ),
                            Text('البريد الالكتروني'),
                            Container(
                              height: 50.h,
                              child: TextField(
                                decoration: InputDecoration(

                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                            ),
                            Text('كلمة المرور'),
                            Container(
                              height: 50.h,
                              child: TextField(
                                decoration: InputDecoration(

                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                            ),
                            Text('عنوان الشركة'),
                            Container(
                              height: 50.h,
                              child: TextField(
                                decoration: InputDecoration(

                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                            ),
                            Text('عن الشركة'),
                            Container(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                            ),
                            Text('الموقع الالكتروني'),
                            Container(
                              height: 40.h,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                            ),
                            Text('تصنيف الشركة'),
                            Container(
                              height: 40.h,
                              child: TextField(
                                decoration: InputDecoration(
                                  prefixIcon: InkWell(
                                    onTap: (){
                                      showModalBottomSheet(
                                          useRootNavigator: true,
                                          isScrollControlled: true,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(topLeft:Radius.circular(20),topRight: Radius.circular(20) ),
                                          ),
                                          backgroundColor: Colors.white,
                                          context: context,
                                          builder: (context) {
                                            return Container(
                                              height: 706,
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                borderRadius:BorderRadius.circular(20),
                                                color: backgroundCard,
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
                                                  Text('اختر تصنيف الشركة الخاصة بكم',style: splash1_desc2,),
                                                  Text('يمكنك تحديد خيارات بحد اقصى'),
                                                  Padding(
                                                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                                    child: Container(
                                                      height: 580.h,
                                                      child: GridView.builder(
                                                        itemCount: 12,
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
                                                              category: 'مطابخ',
                                                              image: 'categroy');
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

                                                    // onPress: (){
                                                    //   Navigator.push(
                                                    //     context,
                                                    //     MaterialPageRoute(builder: (context) => Home()),
                                                    //   );
                                                    // },
                                                  ),

                                                ],
                                              ),
                                            );
                                          });
                                    },
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.grey,
                                    ),
                                  ) ,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                            ),

                            Text('مواعيد عمل الشركة'),

                          ],
                        ),
                      ),
                      SizedBox(height: 20.h,),
                      custom_button(
                        height_btn: 40.h,
                        width_btn: 325.w,
                        text: 'متابعة',
                        background: AppColor1,
                        Radius: 10,
                        textColor: Colors.white,
                        onPress: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomeCompany()),
                          );
                        },
                      ),
                      SizedBox(height: 20.h,),

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
