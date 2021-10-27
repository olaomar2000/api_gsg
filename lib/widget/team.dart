import 'package:fahras/values/colors.dart';
import 'package:fahras/values/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';

class team extends StatelessWidget{
  String image;
  String name;
  String job;
  team(this.image,this.name,this.job);
  @override
  Widget build(BuildContext context) {
    return Container(


      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child:Column(
          children: [
            Image.network(imageUrl+this.image,height: 66,width:double.infinity,fit: BoxFit.fill,),

            Text(this.name,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
            Text(this.job,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: AppColor1),)
          ],
        ) ,
      ),
    );
  }

}