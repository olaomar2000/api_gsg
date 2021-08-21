import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

final List<String> img = [
  "assets/images/slider1.svg",
  "assets/images/slider2.svg",
  "assets/images/slider3.svg",
  "assets/images/slider4.svg",
  "assets/images/slider5.svg",
  "assets/images/slider6.svg"
];

final List<Widget> imageSliders = img
    .map((item) => Container(
  child: Container(

    child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        child: Stack(
          children: <Widget>[
            SvgPicture.asset(
              item,
              height: 100,
              fit: BoxFit.cover,
              width: 161.0,
            ),
          ],
        )),
  ),
))
    .toList();