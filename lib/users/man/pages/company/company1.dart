import 'package:fahras/widget/back_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class company_Screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   body: Stack(
     children: [
       Image.asset('assest/images/company1.png'),
       Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Container(
             height: 41,
             width: 41,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(6),
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
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: SvgPicture.asset(
                 'assets/images/notifications_icon.svg',
               ),
             ),
           ),
           back(),
         ],
       ),

     ],
   ),
    );
  }

}