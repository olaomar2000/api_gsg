import 'package:fahras/get/app_get.dart';
import 'package:fahras/server.dart';
import 'package:fahras/users/company/previous_job2.dart';
import 'package:fahras/users/company/product2.dart';
import 'package:fahras/widget/custom_card_category.dart';
import 'package:fahras/widget/previous_job_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class previous_job extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Appget appget = Get.find();
    print(appget.VendorWorksMap.value['data'].length);
    return SingleChildScrollView(

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Container(
          height: 350,
          child: GridView.builder(
            itemCount:appget.VendorWorksMap.value['data'].length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 25.0, mainAxisSpacing: 15.0),
            itemBuilder: (BuildContext context, int index) {

              return InkWell(
                onTap:(){
                  ServerUser.serverUser.getWorkPage(appget.VendorWorksMap.value['data'][index]['id']);
                  print(appget.VendorWorksMap.value['data'][index]['id'].toString());
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => previousJob2()),
                  );
                } ,
                child: previous_job_card(
                    image:'${appget.VendorWorksMap.value['data'][index]['main_image']} ',

                    job:appget.VendorWorksMap.value['data'][index]['name'] ),
              );
            },
          ),
        ),
      ),
    );
  }
}

