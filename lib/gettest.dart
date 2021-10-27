// import 'package:fahras/get/appGet.dart';
// import 'package:fahras/widget/custom_button.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// class test extends StatelessWidget {
//
//
//   @override
//   Widget build(BuildContext context) {
//     Get.put(AppGet());
//     AppGet appGet  = Get.find();
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           // Obx(() {
//           //   return Text("${appGet.ramzy1.value}");
//           // }),
//           GetBuilder<AppGet>(
//               init: AppGet(),
//               builder: (value)=>Text('${value.ramzy}')),
//           RaisedButton(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(10),
//             ),
//             child: Text('press',style:TextStyle(
//               fontWeight:FontWeight.bold,
//               fontSize: 14,
//             ),),
//             onPressed: (){
//              appGet.setName('jjjjjjjjjjjjj');
//              appGet.setnum();
//             },
//
//           ),
//         ],
//       ),
//
//     );
//
//   }
// }
