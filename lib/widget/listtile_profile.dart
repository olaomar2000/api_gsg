import 'package:fahras/Splash/choose_language.dart';
import '../users/MainPage/fav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class listTile_profile extends StatelessWidget{
   final String image;
 final String text;
  listTile_profile(this.image,this.text);

  @override
  Widget build(BuildContext context) {
   return ListTile(
     onTap: (){
       Navigator.push(
         context,
         MaterialPageRoute(builder: (context) => fav()),
       );
     },
     trailing: Container(
       width: 36.0,
       height: 36.0,
       child: Image.asset('assets/images/$image.png'),
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