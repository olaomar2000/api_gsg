import 'package:fahras/values/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class message_card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        margin: EdgeInsets.symmetric(vertical: 10.0),
        color: Colors.white,
        child: ListTile(
          leading: Container(
            width: 60.0,
            height: 60.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Image.asset('assets/images/companyImage.png'),
            ),
          ),
          title: Text('شركة برومك الهندسية'),
          subtitle: Text('نعم أخي العزيز يوجد لدينا العديد من الخامات'),
          trailing: Container(
            width: 50,
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/images/time.svg',
                  height: 11,
                  width: 11,
                ),
                Text(
                  'منذ 6 دقائق',
                  style: TextStyle(fontSize: 9),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*
 Row(
            children: [
              SvgPicture.asset(
                'assets/images/time.svg',
              ),
              Text(
                'منذ 6 دقائق',
                style: TextStyle(fontSize: 9),
              ),
            ],
          ),*/