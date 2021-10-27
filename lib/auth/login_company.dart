import 'package:country_code_picker/country_code_picker.dart';
import 'package:fahras/company/MainPage/company_information.dart';
import 'package:fahras/company/MainPage/main_pageCompany.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import '../server.dart';
import 'password.dart';
import 'package:fahras/Splash/confirm_phone.dart';
import '../users/MainPage/bottom_bar.dart';
import '../users/MainPage/home.dart';
import 'package:fahras/values/colors.dart';
import 'package:fahras/values/styles.dart';
import 'package:fahras/widget/back_icon.dart';
import 'package:fahras/widget/custom_Card.dart';
import 'package:fahras/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class LoginCompany extends StatefulWidget {
  bool value = false;
  @override
  State<LoginCompany> createState() => _LoginCompanyState();
}

class _LoginCompanyState extends State<LoginCompany> {

  final Mpbilecontroller = TextEditingController();
  final Passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: () => Scaffold(
        body: SafeArea(
          child: Stack(
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
                    )),
              ),
              back(),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30.0),
                        topLeft: Radius.circular(30.0)),
                    color: Colors.white,
                  ),
                  height: 559.h,
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
                          'logo'.tr(),
                          style: splash_title2,
                        ),
                        Text(
                          'login'.tr(),
                          style: splash1_desc2,
                        ),
                        Text(
                          'welcome'.tr(),
                          style: splash_desc2,
                        ),
                        Padding(
                         padding: EdgeInsets.symmetric(horizontal: 25.0.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [

                              Text('phonenum'.tr()),
                              Container(
                              height: 50.h,
                                child: TextFormField(
                                  controller:Mpbilecontroller ,
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
                              Text('password'.tr()),
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
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                      onTap:(){
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => password_screen()),
                                        );

                                      },
                                      child: Text('forgetPassword'.tr())),
                                  Row(
                                    children: [
                                      Text('remmber'.tr()),
                                      Checkbox(value: widget.value, onChanged: (value) {
                                        widget.value =!widget.value;
                                        setState(() {
                                        });
                                      },),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 45.h,
                        ),
                        custom_button(
                          height_btn: 40.h,
                          width_btn: 325.w,
                          text: "login2".tr(),
                          background: AppColor1,
                          Radius: 10,
                          textColor: Colors.white,

                          onPress: (){
                             ServerUser.serverUser.LoginComapny(this.Mpbilecontroller.text,this.Passwordcontroller.text);
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => HomeCompany()),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
