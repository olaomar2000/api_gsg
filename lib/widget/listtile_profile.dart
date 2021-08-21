import 'package:fahras/Splash/choose_language.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class listTile_profile extends StatelessWidget{
   final String image;
 final String text;
  listTile_profile(this.image,this.text);

  @override
  Widget build(BuildContext context) {
   return ListTile(
     trailing: Container(
       width: 36.0,
       height: 36.0,
       child: SvgPicture.asset('assets/images/$image.svg'),
     ),
     title:Text(this.text),
     leading:Icon(Icons.arrow_back_ios),
     onLongPress: (){
       Navigator.push(
         context,
         MaterialPageRoute(builder: (context) => chooseLan_Screen()),
       );
     },
   ) ;

  }
  
}