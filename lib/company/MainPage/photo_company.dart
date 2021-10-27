import 'package:fahras/values/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhotoCompany extends StatelessWidget {

  bool isCompany = false;
  PhotoCompany({this.isCompany});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  height:28 ,
                  width: 118,
                  decoration: BoxDecoration(
                    color:AppColor1,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(child: Text('أضف صورة جديدة',style: TextStyle(fontSize: 12,color: Colors.white),))
              ),
              Text('الصور الخاصة بي'),
            ],
          ),
        ),
        Container(
          height: 315,
          child: GridView.builder(
            itemCount: 12,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0
            ),
            itemBuilder: (BuildContext context, int index){
              return  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3.0),
                child: Stack(
                  children: [
                    Image.asset('assets/images/companyImage.png',height: 100,width:112,fit: BoxFit.fill,),
                 isCompany == true?   Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: Align(
                          alignment: Alignment.topRight,
                          child:  Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(.5),
                                  borderRadius: BorderRadius.all(Radius.circular(5))
                              ),
                              child:
                              Center(
                                child: Icon(Icons.close,color: Colors.white,),
                              )
                          )
                      ),
                    ) :Container()
                  ],
                ),
              );
            },
          ),
        ),
      ],
    ) ;
  }
}
