import 'package:fahras/values/colors.dart';
import 'package:fahras/values/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class custom_Card_Category extends StatelessWidget {
  final double heightCard;
  final double widthCard;
  final double Radius;
  final String image;
  final String category;
  Color color;
  custom_Card_Category(
      {this.heightCard,
      this.widthCard,
      this.Radius,
      this.category,
      this.image,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.heightCard,
      width: this.widthCard,
      child: Card(
        color: this.color ?? Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(this.Radius),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 7.0),
              child:
              image == "" ?Image.network(imageUrl+'category.png',width: 83,height: 64,):
              Image.network(imageUrl+this.image,width: 83,height: 64,) ,

            ),
            Text(this.category)
          ],
        ),
      ),
    );
  }
}
