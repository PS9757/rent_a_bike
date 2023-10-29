import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rent_a_bike/screens/cart_wallet/cart_wallet.dart';
import 'package:rent_a_bike/screens/home/home.dart';
import 'package:rent_a_bike/screens/map_market/map_market.dart';
import 'package:rent_a_bike/screens/settings/setings.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  var currentIndex = 0;
  final List<Widget> screens = [
    HomeScreenPage(),
    MapMarket(),
    CartWallet(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar: Container(
          // color: Colors.deepPurpleAccent,
          height: size.width * .155,
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: size.width * .024),
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                setState(() {
                  currentIndex = index;
                  // print(index);
                });
              },
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(height: size.width * .014),
                  // Icon(listOfIcons[index],
                  //     size: size.width * .076, color: Colors.black),
                  Image.asset(listOfSvg[index],
                      width: size.width * .076,
                      height: size.width * .076,
                  ),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 1500),
                    curve: Curves.fastLinearToSlowEaseIn,
                    margin: EdgeInsets.only(
                      top: index == currentIndex ? 0 : size.width * .029,
                      right: size.width * .0422,
                      left: size.width * .0422,
                    ),
                    width: size.width * .153,
                    height: index == currentIndex ? size.width * .014 : 0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  List<String> listOfSvg = [
    "assets/images/navBar/Home.png",
    "assets/images/navBar/mapMarker.png",
    "assets/images/navBar/cardWallet.png",
    "assets/images/navBar/Settings.png"
  ];

  List<String> listOfStrings = [
    'Home',
    'Favorite',
    'Settings',
    'Account',
  ];
}
