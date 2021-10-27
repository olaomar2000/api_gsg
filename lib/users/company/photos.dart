import 'package:flutter/material.dart';

class photo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: GridView.builder(
        itemCount: 12,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 4.0
        ),
        itemBuilder: (BuildContext context, int index){
          return   Container(
            child: Column(
              children: [
                Image.asset('assets/images/companyImage.png',height: 100,width:112,fit: BoxFit.fill,),

              ],
            ),
          );
        },
      ),
    ) ;

  }

}