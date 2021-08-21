import 'package:fahras/values/colors.dart';
import 'package:flutter/material.dart';

class back extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 7),
      child: Align(
        alignment:Alignment.topRight,
        child: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Container(
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
        ),
      ),
    );
  }

}