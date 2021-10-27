import 'package:fahras/get/app_get.dart';
import 'package:fahras/values/constant.dart';
import 'package:get/get.dart';

import '../../server.dart';
import 'photos.dart';
import 'previous_job.dart';
import 'previous_job2.dart';
import 'product.dart';
import 'product2.dart';
import 'rate.dart';
import 'who_are.dart';
import 'package:fahras/values/colors.dart';
import 'package:fahras/values/styles.dart';
import 'package:fahras/widget/back_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';

class company_Screen extends StatefulWidget {
  @override
  State<company_Screen> createState() => _company_ScreenState();
}

class _company_ScreenState extends State<company_Screen> {
  int selectedType =0;

  setSelectedType(int value) {
    this.selectedType = value;
    setState(() {});
  }

  List<String> item = [
    'من نحن',
    'أعمال سابقة ',
    'تقييمات',
    'المعرض',
    ' منتجات',
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

                 // image: image == null ?Image.network(imageUrl+'vendor.png',height: 131,width: 120,fit: BoxFit.fill,):
                 // NetworkImage(imageUrl+this.image,height: 131,width: 120,fit: BoxFit.fill,),

               image:  NetworkImage(imageUrl+appGet.VendorDetailsMap.value['data']['image_url']),
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
                    ])),
            Padding(
          padding:  EdgeInsets.only(top:170),
          child: Container(
                height: 215,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/images/timeCompany.svg',
                            height: 13,
                            width: 13,
                          ),
                          Text('${appGet.VendorDetailsMap.value['data']['work_time']}',style: TextStyle(color: Color(0xff67B6FF),fontSize: 14 ,fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/images/timeCompany.svg',
                            height: 13,
                            width: 13,
                          ),
                          Text('${appGet.VendorDetailsMap.value['data']['rate']}',style: TextStyle(color: Color(0xff67B6FF),fontSize: 14 ,fontWeight: FontWeight.bold),),
                        ],
                      ),


                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Row(
                        children: [
                          Text('${appGet.VendorDetailsMap.value['data']['distance']} Km',style: TextStyle(color: Color(0xff3F51B5),fontSize: 14,fontWeight: FontWeight.bold)),
                          SvgPicture.asset(
                            'assets/images/locationCompany.svg',
                            height: 16,
                            width: 16,
                          ),

                        ],
                      ),
                      Row(
                        children: [

                          Text(appGet.VendorDetailsMap.value['data']['open']== true ?'مفتوح':'مغلق',style: TextStyle(color: Color(0xff64C962),fontSize: 14 ,fontWeight: FontWeight.bold),),
                        ],
                      ),


                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 22.0,left: 16,right: 16),
                    child: Divider(thickness: 0.5,color: Colors.grey,),
                  ),
                  Text('  ${appGet.VendorDetailsMap.value['data']['name']}',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(' ${appGet.VendorDetailsMap.value['data']['address']} ',style: TextStyle(color: Color(0xff1D1D26),fontSize: 12),),
                      SizedBox(width: 3,),
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
                        height:24 ,
                        decoration: BoxDecoration(
                          color:Color(0xff5F533D) ,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text('أبواب داخلية',style:TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                          ),),

                        ),
                      ),
                      SizedBox(width: 6,),
                      Container(
                        height:24 ,
                        decoration: BoxDecoration(
                          color:Color(0xff931C65) ,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text('نوافذ',style:TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                          ),),

                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6.0,left: 16,right: 16),
                    child: Divider(thickness: 0.5,color: Colors.grey,),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 73),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(
                          'assets/images/btn.call.svg',
                          height: 24,
                          width: 24,
                        ),

                        SvgPicture.asset(
                          'assets/images/btn.map.svg',
                          height: 24,
                          width: 24,
                        ),

                        SvgPicture.asset(
                          'assets/images/btn.message.svg',
                          height: 24,
                          width: 24,
                        ),

                        SvgPicture.asset(
                          'assets/images/btn.message.svg',
                          height: 24,
                          width: 24,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

        ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding:  EdgeInsets.only(top:130),
                child: Container(
                  height: 115,
                  width: 115,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(imageUrl+appGet.VendorDetailsMap.value['data']['logo_url'],)
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 385),
              child: Container(
                height: 50,
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
                            color:
                            selectedType == index ? AppColor1 : Colors.white,
                          ),
                          child: Center(child: Text(item[index])),
                        ),
                      );
                    }),
              ),
            ),
            selectedType ==0 ? Padding(
              padding:  EdgeInsets.only(top: 440.0),
              child: Who_Are(),
            ): selectedType ==1 ? Padding(
              padding:  EdgeInsets.only(top: 440.0),
              child: InkWell(
                //
                // onTap: (){
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => previousJob2()),
                //   );
                // },
                  child: previous_job()),
            ):
            selectedType ==2 ? Padding(
              padding:  EdgeInsets.only(top: 440.0),
              child: Rate(),
            ):
            selectedType == 3? Padding(
              padding:  EdgeInsets.only(top: 440.0),
              child: photo(),
            ): selectedType == 4? Padding(
              padding:  EdgeInsets.only(top: 440.0),
              child: InkWell(
                onTap:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => product2()),
                  );
                } ,
                  child: Product()),
            ): Container(

            )
          ],
        ),
      ),
    );
  }
}



