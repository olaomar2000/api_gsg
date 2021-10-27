import 'photos.dart';
import 'package:fahras/values/colors.dart';
import 'package:fahras/widget/back_icon.dart';
import 'package:fahras/widget/company_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';

class product2 extends StatefulWidget{
  @override
  State<product2> createState() => _product2State();
}

class _product2State extends State<product2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: 348,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    'assets/images/product2.png',
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
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 315,left: 16,right: 16),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(  Icons.favorite_border),
                                Text('150ريال',style: TextStyle(color: AppColor1,fontWeight: FontWeight.bold,fontSize: 16),),
                                Text('باب داخلي مودرن',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),

                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 2.0),
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            Text('احدث الابواب خشب جديدة و عصرية، ارقي تصميمات ابواب غرف و ابواب حمامات ومطابخ مميزة و راقية، احدث كتالوج ابواب خشب فخمة جدا و مميزة لعشاق الفخامة، الكتالوج يحتوي علي اكثر من 25 تصميم راقي و مميز لمختلف تصميمات الابواب المميزة للاختيار من بينها للحصول علي التصميم الافضل المناسب لشقتك او للفيلا الخاصة بك.'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 10),
                    child: Text('صاحب المنتج',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  ),
                  company_card(),
                  SizedBox(height: 15,),
                  Center(
                    child: Container(
                      height:30 ,
                      decoration: BoxDecoration(
                        color:Colors.red ,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text('غير متوفر حاليا',style:TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),),

                      ),
                    ),
                  ),
                ],
              ),
            ),



          ],
        ),
      ),
    );
  }
}