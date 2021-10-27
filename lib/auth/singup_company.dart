import 'dart:io';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:fahras/Splash/confirm_phone.dart';
import 'package:fahras/auth/login_company.dart';

import 'package:fahras/values/colors.dart';
import 'package:fahras/values/styles.dart';
import 'package:fahras/widget/back_icon.dart';
import 'package:fahras/widget/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import '../server.dart';

class SingupCompany extends StatefulWidget {
  bool value = false;
  @override
  State<SingupCompany> createState() => _SingupCompanyState();
}

class _SingupCompanyState extends State<SingupCompany> {


  final Mpbilecontroller = TextEditingController();
  final Passwordcontroller = TextEditingController();
  final Namecontroller = TextEditingController();
  final Addresscontroller = TextEditingController();
  final Emailcontroller = TextEditingController();
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
                back(),
                Image.asset('assets/images/worker.png'),
                Text('إنشاء حساب جديد',style: splash1_desc2,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [

                      Text('اسم الشركة'),
                      Container(
                        height: 50.h,

                        child: TextFormField(
                          controller: Namecontroller,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.person,
                              color: AppColor1,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),

                      Text('رقم الجوال'),
                      Container(
                        height: 50.h,
                        child: TextFormField(
                          controller: Mpbilecontroller,
                          decoration: InputDecoration(
                            suffixIcon: CountryCodePicker(
                              onChanged: print,
                              initialSelection: 'IT',
                              favorite: ['+39', 'FR'],
                              showCountryOnly: false,
                              showOnlyCountryWhenClosed: false,
                              alignLeft: false,
                            ),
                            prefixIcon: Icon(
                              Icons.phone,
                              color: AppColor1,
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
                        child: TextFormField(
                          controller: Emailcontroller,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.mail_outline,
                              color: AppColor1,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      Text('كلمة المرور'),
                      Container(
                        height: 50.h,
                        child: TextFormField(
                          controller: Passwordcontroller,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock,
                              color: AppColor1,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      Text('عنوان الشركة'),
                      Container(
                        height: 50.h,
                        child: TextFormField(
                          controller: Addresscontroller,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.pin_drop_outlined,
                              color: AppColor1,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      Text('شعار الشركة'),
                      Container(
                        height: 127.h,
                        color: Colors.white,
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
                           
                          ): Image.file(this.file ,height: 127.h,width: double.infinity,fit:BoxFit.cover,),
                        ),
                      ),
                    ],
                  ),
                ),
                CheckboxListTile(
                  value:widget.value,
                  onChanged: (value) {
                    widget.value =!widget.value;
                    setState(() {

                    });
                  },
                  title:
                  Text('أوافق على شروط الخدمات وسياسة الخصوصية'),
                ),
                SizedBox(
                  height: 45.h,
                ),
                custom_button(
                  height_btn: 40.h,
                  width_btn: 325.w,
                  text: 'متابعة',
                  background: AppColor1,
                  Radius: 10,
                  textColor: Colors.white,

                  onPress: (){
                    ServerUser.serverUser.regCompany(this.Namecontroller.text, this.Mpbilecontroller.text, this.Passwordcontroller.text,
                        this.Emailcontroller.text, this.Addresscontroller.text,file);

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginCompany()),
                      );
                    }
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
