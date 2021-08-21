import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class custom_button extends StatelessWidget{
  final String text;
  final  double height_btn;
  final  double width_btn;
  final double Radius;
  final Color background;
  final Color textColor;
  Function onPress;



  custom_button(
      {this.height_btn,
      this.width_btn,
      this.text,
      this.Radius,
      this.background,
      this.textColor,
      this.onPress});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: this.height_btn,
      width: this.width_btn,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(this.Radius),
        ),
      child: Text(this.text,style:TextStyle(
        fontWeight:FontWeight.bold,
        fontSize: 14,
        color:this.textColor ,
      ),),
        color: this.background,
        onPressed: ()=>this.onPress,
      ),
    );
  }

}