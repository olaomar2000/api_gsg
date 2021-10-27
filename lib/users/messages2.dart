import 'package:fahras/values/colors.dart';
import 'package:fahras/values/styles.dart';
import 'package:fahras/widget/company_card.dart';
import 'package:fahras/widget/listtile_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class messages2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundCard,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: 348,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      'assets/images/profile_header.png',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 22.0,right:16 ,left: 16),
                child: Row(
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
                    Text('محادثة',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                    InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                      child: Container(
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
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 102,left: 16,right: 16),
                child: company_card(),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 250,),
                child: Container(
                  width: double.infinity,
                  height: 650,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(20),
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


                    ],
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