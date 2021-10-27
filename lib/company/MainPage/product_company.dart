import 'package:fahras/users/company/photos.dart';
import 'package:fahras/values/colors.dart';
import 'package:fahras/widget/back_icon.dart';
import 'package:fahras/widget/company_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';

class ProductCompany extends StatefulWidget {
  @override
  State<ProductCompany> createState() => _ProductCompanyState();
}

class _ProductCompanyState extends State<ProductCompany> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: 348,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    'assets/images/jobPhoto.png',
                  ),
                ),
              ),
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 7),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 41,
                        width: 41,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
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
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset(
                            'assets/images/notifications_icon.svg',
                          ),
                        ),
                      ),
                      Container(
                        height: 41,
                        width: 41,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
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
                        child: Icon(
                          Icons.arrow_forward,
                          color: blackColor,
                          size: 26.0,
                        ),
                      ),
                    ])),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 315, left: 16, right: 16),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.favorite_border),
                                Text(
                                  'ديكورات داخلية',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2.0),
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                                'تأسست شركة افضل الإنشاءات الدولية ش.م.م سنة 2004 وتمتلك الشركة عددا كبيرا من الخبرات '
                                'العاملة في مجال البناء والمقاولات والتشطيبات والوساطة العقارية وبيع وشراء الأراضي وتقسيمها'
                                ' وتهدف الشركة في المقام الأول لإثراء '
                                'الاقتصاد الوطني وتوفير فرص العمل والاستثمار والتطوير في السلطنة '),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 10),
                    child: Text(
                      'المزيد من الصور',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  photo(),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 28,
                          width: 65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: AppColor1,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 2.0, left: 5, bottom: 3),
                            child: Row(
                              children: [
                                Text('ازالة'),
                                Container(
                                    height: 16,
                                    width: 10,
                                    child: Icon(Icons.cancel_outlined))
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 28,
                          width: 65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: AppColor1,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 2.0, left: 5, bottom: 3),
                            child: Row(
                              children: [
                                Text('تعديل'),
                                Container(
                                    height: 16,
                                    width: 10,
                                    child: Icon(Icons.edit))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
