

import 'package:fahras/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class custom_Card_Category extends StatelessWidget{
  final  double heightCard;
  final  double widthCard;
  final double Radius;
  final String image;
  final String category;
  custom_Card_Category(
      {this.heightCard, this.widthCard, this.Radius, this.category, this.image});



  @override
  Widget build(BuildContext context) {
    return Container(
      height:this.heightCard ,
      width:this.widthCard ,

      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(this.Radius),

        ),
        child:Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(top: 7.0),
              child: SvgPicture.asset('assets/images/$image.svg',height: 64,width: 83,),
            ),
            Text(this.category)
          ],
        ) ,
      ),
    );
  }

}