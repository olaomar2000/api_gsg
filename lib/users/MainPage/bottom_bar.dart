import '../../server.dart';
import 'home.dart';
import 'list.dart';
import 'messages.dart';
import 'profile.dart';
import 'package:fahras/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:bottom_bar/bottom_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentPage = 0;
  final _pageController = PageController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ServerUser.serverUser.getWishList();
    ServerUser.serverUser.getHomeCompany();
  }

  @override
  Widget build(BuildContext context) {
    ServerUser.serverUser.getWishList();
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          home_screen(),
          list_screen(),
          //Container(color: Colors.blue),
          messages_screen(),
          // Container(color: Colors.yellowAccent),
          //messages_screen(),
          ProfileScreen(),
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
