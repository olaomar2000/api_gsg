import 'package:fahras/Splash/choose_language.dart';
import '../messages2.dart';
import 'package:fahras/values/colors.dart';
import 'package:fahras/values/styles.dart';
import 'package:fahras/widget/message_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class messages_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: blueColor2,
        body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 7),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
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

                  child:
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset('assets/images/notifications_icon.svg',),
                  ),
                ),
                Text('الرسائل',style: screen_name,),
                Container(
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
              ],
            ),
            SizedBox(height: 40,),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) => InkWell(child: message_card(),onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => messages2()),
                  );
                },),
                itemCount: 15,
                shrinkWrap: true,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
