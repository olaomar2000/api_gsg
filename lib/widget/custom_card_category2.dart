import 'package:fahras/values/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class custom_Card_Category2 extends StatelessWidget {
  final String image;
  custom_Card_Category2(this.image);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:171 ,
      width:163 ,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),

        ),
        child:Column(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: SvgPicture.asset('assets/images/$image.svg',height: 111,width: 143,)),
              Text('ابواب داخلية',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
              Text('150ريال',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: AppColor1),)

            ],

        ) ,
      ),
    );
  }
}
