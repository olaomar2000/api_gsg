import 'package:fahras/company/MainPage/add_product.dart';
import 'package:fahras/company/MainPage/product_det.dart';
import 'package:fahras/get/app_get.dart';
import 'package:fahras/server.dart';
import 'package:fahras/values/colors.dart';
import 'package:fahras/widget/custom_card_category2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Appget appGet = Get.find();
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  height: 28,
                  width: 118,
                  decoration: BoxDecoration(
                    color: AppColor1,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AddProduct()),
                      );
                    },
                    child: Center(
                        child: Text(
                      'أضف منتج جديد',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    )),
                  )),
              Text('المنتجات الخاصة بي'),
            ],
          ),
        ),
        Container(
          height: 315,
          child: GridView.builder(
            itemCount: appGet.myProductMap.value['data'].length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 17.0,
                mainAxisSpacing: 16.0),
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: InkWell(
                  onTap: () {
                    ServerUser.serverUser.getProductCompanyId(appGet.myProductMap.value['data'][index]['id'].toString());
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProductDetails()),
                    );
                  },
                  child: custom_Card_Category2(
                    image: appGet.myProductMap.value['data'][index]['image_url'],
                    isCompany: true,
                       name: appGet.myProductMap.value['data'][index]['name'],
                    price: appGet.myProductMap.value['data'][index]['price'],
                    isfav: false,

                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
