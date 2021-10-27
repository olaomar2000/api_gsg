
import 'package:fahras/get/app_get.dart';
import 'package:fahras/values/colors.dart';
import 'package:fahras/values/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class company_card extends StatelessWidget {
  bool isfav ;
String name;
String image;
String address;
String rate;
bool open;
Function onTap;


  company_card({this.isfav = false,this.name ,this.image ,this.address,this.rate,this.open,this.onTap});
  @override
  Widget build(BuildContext context) {
    Appget appGet = Get.find();
    return ScreenUtilInit(
        designSize: Size(375, 812),
        builder: () => Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                height: 131,
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 5, top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [

                            Stack(
                              children: [
                                Padding(
                                  padding:  EdgeInsets.only(right: 8.0),
                                  child:
                                  image == null ?Image.network(imageUrl+'vendor.png',height: 131,width: 120,fit: BoxFit.fill,):
                                  Image.network(imageUrl+this.image,height: 131,width: 120,fit: BoxFit.fill,),
                                ),
                                InkWell(
                                  onTap: this.onTap,
                                  child: Padding(
                                    padding:  EdgeInsets.only(right: 93),
                                    child: isfav == true ?Icon(Icons.favorite,color: Colors.red,) :Icon(Icons.favorite_border,),
                                  ),
                                ),
                                isfav == true ?
                                Container(
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(.5),
                                        borderRadius: BorderRadius.all(Radius.circular(5))
                                    ),
                                    child: Center(
                                      child: Icon(Icons.close,color: Colors.white,),
                                    )
                                ):Container()
                              ],
                            ),
                            Padding(
                              padding:  EdgeInsets.only(right: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(this.name,style: TextStyle(color: Colors.black,fontSize: 14.sp,fontWeight: FontWeight.bold),),
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/images/timeCompany.svg',
                                        height: 11,
                                        width: 11,
                                      ),
                                      Text('9 AM to 6 PM',style: TextStyle(color: Color(0xff67B6FF),fontSize: 12.sp),),
                                      SizedBox(width: 5,),
                                      Text(this.open == true ?'مفتوح':'مغلق',style: TextStyle(color: Color(0xff64C962),fontSize: 12.sp),)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/images/rateCompany.svg',
                                        height: 11,
                                        width: 11,
                                      ),
                                      Text(this.rate ?? '1',style: TextStyle(color: AppColor1,fontSize: 12.sp),),
                                      SizedBox(width: 5,),
                                      SvgPicture.asset(
                                        'assets/images/locationCompany.svg',
                                        height: 11,
                                        width: 11,
                                      ),
                                      Text('1.5 Km',style: TextStyle(color: Color(0xff3F51B5),fontSize: 12.sp),)

                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/images/location2.svg',
                                        height: 11,
                                        width: 7,
                                      ),
                                      SizedBox(width: 3,),
                                      Text(this.address ??'',style: TextStyle(color: Color(0xff1D1D26),fontSize: 10.sp),),
                                    ],
                                  ),
                                  Row(
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

                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SvgPicture.asset(
                              'assets/images/btn.call.svg',
                              height: 24,
                              width: 24,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            SvgPicture.asset(
                              'assets/images/btn.map.svg',
                              height: 24,
                              width: 24,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            SvgPicture.asset(
                              'assets/images/btn.message.svg',
                              height: 24,
                              width: 24,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ));
  }
}
