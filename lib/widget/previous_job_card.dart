import 'package:fahras/values/colors.dart';
import 'package:fahras/values/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';

class previous_job_card extends StatelessWidget{
  String image;
  String job;
  bool isCompany;
  previous_job_card({this.image, this.job, this.isCompany});
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
            Image.network(imageUrl+this.image,height: 120,width: double.infinity,fit: BoxFit.fill,),

            Text(this.job,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
            isCompany == true?   Align(
                alignment: Alignment.bottomLeft,
                child:  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: AppColor1,
                        borderRadius: BorderRadius.all(Radius.circular(5))
                    ),
                    child:
                    Center(
                      child: Icon(Icons.edit,color: Colors.white,),
                    )
                )
            ):Container()

          ],
        ) ,
      ),
    );
  }

}