import 'package:fahras/company/MainPage/product_det.dart';
import 'package:fahras/values/colors.dart';
import 'package:fahras/values/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class custom_Card_Category2 extends StatelessWidget {
  final String image;
  final bool isfav;
  bool isCompany;
  String name;
  String price;


  custom_Card_Category2({this.image, this.isfav = false, this.isCompany,this.name,this.price});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 171,
          width: 163,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Column(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Padding(
                    padding: EdgeInsets.only(top: 5),
                    child:
                    Image.network(imageUrl+this.image,width: 157,height: 111,fit: BoxFit.fill,),
                    // Image.asset(
                    //   'assets/images/$image.png',
                    //   height: 111,
                    //   width: 157,
                    //   fit: BoxFit.fill,
                    // ),
                  )),
              Text(
                this.name,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              Text(
                this.price +'ريال',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: AppColor1),
              ),
            ],
          ),
        ),
        isfav == true
            ? Container(
                height: 171,
                width: 163,
                child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(.5),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Center(
                          child: Icon(
                            Icons.close,
                            color: Colors.white,
                          ),
                        ))))
            : Container(),
        Container(
            height: 171,
            width: 163,
            child: Align(
                alignment: Alignment.topLeft,
                child: isfav == true
                    ? Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )
                    : Icon(Icons.favorite_border))),
        isCompany == true
            ? Container(
                height: 171,
                width: 163,
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: AppColor1,
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Center(
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                        ))),
              )
            : Container()
      ],
    );
  }
}
