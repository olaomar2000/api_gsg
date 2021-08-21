
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fahras/values/colors.dart';
import 'package:fahras/values/styles.dart';
import 'package:fahras/widget/custom_card.dart';
import 'package:fahras/widget/custom_card_category.dart';
import 'package:fahras/widget/slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class home_screen extends StatefulWidget {
  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {


  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 16),
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
                      width: 281,
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
              // SvgPicture.asset(
              //   'assets/images/ads.svg',
              //   height: 100,
              //   width: double.infinity,
              // ),





              CarouselSlider (
                options: CarouselOptions(
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentindex = index;
                      });
                    }
                ),
                items:imageSliders,

              ),
              // Expanded(
              //   flex: 1,
              //   child: Column(
              //     children: <Widget>[
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: List.generate(
              //             img.length, (index) => buildDot(index: index)),
              //       ),
              //     ],
              //   ),
              // ),


              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 16),
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('شاهد الكل',style: TextStyle(fontSize: 13,color: AppColor1),),
                    Text('التصنيفات',style: splash_desc2,),
                  ],
                ),
              ),

                 Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: GridView.builder(
                        itemCount: 12,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 25.0,
                            mainAxisSpacing: 15.0
                        ),
                        itemBuilder: (BuildContext context, int index){
                          return   custom_Card_Category(
                              heightCard: 97,
                              widthCard: 105,
                              Radius: 20,
                              category: 'مطابخ',
                              image: 'categroy');
                        },
                      ),
                    ),
                  )


            ],
          ),
        ),
      ),
    );
  }
}
