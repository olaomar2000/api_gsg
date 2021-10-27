import 'package:fahras/company/MainPage/add_job.dart';
import 'package:fahras/company/MainPage/product_company.dart';
import 'package:fahras/get/app_get.dart';
import 'package:fahras/values/colors.dart';
import 'package:fahras/widget/previous_job_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class JobCompany extends StatelessWidget {

  bool isCompany = false;
  JobCompany({this.isCompany});
  @override
  Widget build(BuildContext context) {

    Appget appGet = Get.find();
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  height: 28,
                  width: 118,
                  decoration: BoxDecoration(
                    color: AppColor1,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AddJob()),
                        );
                      },
                      child: Center(
                          child: Text(
                        'أضف عمل جديد',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      )))),
              Text('الأعمال الخاصة بي'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            height: 315,
            child: GridView.builder(
              itemCount: appGet.myWorkMap.value['data'].length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 13.0,
                  mainAxisSpacing: 11.0),
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductCompany()),
                      );
                    },
                    child: previous_job_card(
                      image: appGet.myWorkMap.value['data'][index]['main_image'],
                     job:  appGet.myWorkMap.value['data'][index]['name'],
                      isCompany: true,
                    ));
              },
            ),
          ),
        ),
      ],
    );
  }
}
