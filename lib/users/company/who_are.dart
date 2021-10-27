import 'package:fahras/get/app_get.dart';
import 'package:fahras/widget/team.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';

class Who_Are extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Appget appGet = Get.find();
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('عن الشركة',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: Divider(

                        thickness: 0.5,
                        color: Colors.grey,
                      ),
                    ),
                    Text('${appGet.VendorDetailsMap.value['data']['description']}'),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),

                child: Column(
                  children: [
                    Text('فريق العمل'),
                    Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    ),
                    Container(
                      height: 300,
                      child: GridView.builder(
                        shrinkWrap: false,
                        itemCount: appGet.VendorDetailsMap.value['data']['team'].length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,

                        ),
                        itemBuilder: (BuildContext context, int index){
                          return   team(
                              appGet.VendorDetailsMap.value['data']['team'][index]['image_url']     ,
                              '${appGet.VendorDetailsMap.value['data']['team'][index]['name']}',
                              '${appGet.VendorDetailsMap.value['data']['team'][index]['position']}');
                        },
                      ),
                    )

                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
