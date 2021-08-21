

import 'package:fahras/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class custom_Card extends StatefulWidget{
  final  double heightCard;
  final  double widthCard;
  final double Radius;
  final String image;
  final String user;

  final int type;
  custom_Card(this.heightCard,this.widthCard,this.Radius,this.user,this.image,this.type);

  @override
  State<custom_Card> createState() => _custom_CardState();
}

class _custom_CardState extends State<custom_Card> {
//int type2=1 ;


  @override
  Widget build(BuildContext context) {
   return Container(
     height:this.widget.heightCard ,
     width:this.widget.widthCard ,

     child: Card(
       color: widget.type==1 ?AppColor1:widget.type==2? Colors.red : Colors.white,
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(this.widget.Radius),

       ),
       child:Column(
         children: [
           Padding(
             padding:  EdgeInsets.only(top: 13.0),
             child: SvgPicture.asset('assets/images/${widget.image}.svg'),
           ),
           Text(this.widget.user)
         ],
       ) ,

     ),
   );
  }
}