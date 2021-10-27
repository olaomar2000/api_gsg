
import 'package:fahras/company/MainPage/home_company.dart';
import 'package:fahras/company/MainPage/profile_company.dart';
import 'package:fahras/users/MainPage/list.dart';
import 'package:fahras/users/MainPage/messages.dart';
import 'package:fahras/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:bottom_bar/bottom_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../server.dart';

class HomeCompany extends StatefulWidget {
  @override
  _HomeCompanyState createState() => _HomeCompanyState();
}

class _HomeCompanyState extends State<HomeCompany> {
  int _currentPage = 0;
  final _pageController = PageController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    ServerUser.serverUser.getHomeCompany();
    ServerUser.serverUser.getMyWork();
    ServerUser.serverUser.getMyProduct();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          Company(),
          list_screen(),
          messages_screen(),
          ProfileCompany()
        ],
        onPageChanged: (index) {
          setState(() => _currentPage = index);
        },
      ),
      bottomNavigationBar: BottomBar(
        selectedIndex: _currentPage,
        onTap: (int index) {
          _pageController.jumpToPage(index);
          setState(() => _currentPage = index);
        },
        items: <BottomBarItem>[
          BottomBarItem(
            icon:  SvgPicture.asset(
              'assets/images/homeBar.svg',
              height: 17,
              width: 20,
              color: AppColor1,
            ),
            title: Text('Home'),
            activeColor: AppColor1,

          ),
          BottomBarItem(
            icon: SvgPicture.asset(
              'assets/images/listBar.svg',
              height: 17,
              width: 20,
              color: AppColor1,
            ),
            title: Text('List'),
            activeColor: AppColor1,

          ),
          BottomBarItem(
            icon:SvgPicture.asset(
              'assets/images/messageBar.svg',
              height: 17,
              width: 20,
              color: AppColor1,
            ),
            title: Text('messages'),
            activeColor: AppColor1,

          ),
          BottomBarItem(
            icon:SvgPicture.asset(
              'assets/images/person.svg',
              height: 17,
              width: 20,
              color: AppColor1,
            ),
            title: Text('profile'),
            activeColor: AppColor1,
          ),
        ],
      ),
    );
  }
}
