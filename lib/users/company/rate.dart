import 'package:fahras/values/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Rate extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15.0),
              child:  LinearPercentIndicator(
                width: 140.0,
                lineHeight: 14.0,
                percent: 0.5,
                trailing: Row(
                  children: [
                    Text('1'),
                    Icon(Icons.star,color: AppColor1,),
                  ],
                ),
                linearStrokeCap: LinearStrokeCap.roundAll,
                backgroundColor: Colors.grey,
                progressColor: AppColor1,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child:  LinearPercentIndicator(
                width: 140.0,
                lineHeight: 14.0,
                percent: 0.5,
                trailing: Row(
                  children: [
                    Text('2'),
                    Icon(Icons.star,color: AppColor1,),
                  ],
                ),
                linearStrokeCap: LinearStrokeCap.roundAll,
                backgroundColor: Colors.grey,
                progressColor: AppColor1,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child:  LinearPercentIndicator(
                width: 140.0,
                lineHeight: 14.0,
                percent: 0.5,
                trailing: Row(
                  children: [
                    Text('3'),
                    Icon(Icons.star,color: AppColor1,),
                  ],
                ),
                linearStrokeCap: LinearStrokeCap.roundAll,
                backgroundColor: Colors.grey,
                progressColor: AppColor1,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child:  LinearPercentIndicator(
                width: 140.0,
                lineHeight: 14.0,
                percent: 0.5,
                trailing: Row(
                  children: [
                    Text('4'),
                    Icon(Icons.star,color: AppColor1,),
                  ],
                ),
                linearStrokeCap: LinearStrokeCap.roundAll,
                backgroundColor: Colors.grey,
                progressColor: AppColor1,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child:  LinearPercentIndicator(
                width: 140.0,
                lineHeight: 14.0,
                percent: 0.5,
                trailing: Row(
                  children: [
                    Text('5'),
                    Icon(Icons.star,color: AppColor1,),
                  ],
                ),
                linearStrokeCap: LinearStrokeCap.roundAll,
                backgroundColor: Colors.grey,
                progressColor: AppColor1,
              ),
            ),

          ],
        ),

    );
  }

}