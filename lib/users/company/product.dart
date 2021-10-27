import 'package:fahras/get/app_get.dart';
import 'package:fahras/widget/custom_card_category2.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Product extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Appget appGet = Get.find();
   return Container(
     height: 400,
     child: GridView.builder(
       itemCount: appGet.ProductVendorMap.value['data'].length,
       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
           crossAxisCount: 2,
           crossAxisSpacing: 17.0,
           mainAxisSpacing: 16.0
       ),
       itemBuilder: (BuildContext context, int index){
         return   Padding(
           padding: const EdgeInsets.symmetric(horizontal: 16.0),
           child: custom_Card_Category2(image: 'companyImage',name: '${appGet.ProductVendorMap.value['data'][index]['name']}',
           price:'${appGet.ProductVendorMap.value['data'][index]['price']}',
             isfav: appGet.ProductVendorMap.value['data'][index]['isFavorit'],
           ),
         );
       },
     ),
   ) ;
  }

}