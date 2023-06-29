import 'package:assignment/commons/widgets/custom_appbar.dart';
import 'package:assignment/constants/assets_images.dart';
import 'package:assignment/constants/colors.dart';
import 'package:assignment/screens/comming_soon.dart';
import 'package:assignment/screens/dashboard/dashboard_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  late PersistentTabController _controller;
  int pageIndex = 0;

  List<Widget> _buildScreens() {
    return [
      const DashBoardScreen(),
      const comingSoon(),
      const comingSoon(),
      const comingSoon(),
      const comingSoon()
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Image.asset(
          homeNavIcon,
          height: 30,
          width: 30,
          color: navColor,
        ),
        title: ("Home"),
        inactiveIcon: Image.asset(
          homeNavIcon,
          height: 30,
          width: 30,
          color: CupertinoColors.systemGrey,
        ),
        activeColorPrimary: navColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          findNavIcon,
          height: 30,
          width: 30,
          color: navColor,
        ),
        inactiveIcon: Image.asset(
          findNavIcon,
          height: 30,
          width: 30,
          color: CupertinoColors.systemGrey,
        ),
        title: ("Search"),
        activeColorPrimary: navColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          dateNavIcon,
          height: 30,
          width: 30,
          color: navColor,
        ),
        inactiveIcon: Image.asset(
          dateNavIcon,
          height: 30,
          width: 30,
          color: CupertinoColors.systemGrey,
        ),
        title: ("Booking"),
        activeColorPrimary: navColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          socNavIcon,
          height: 30,
          width: 30,
          color: navColor,
        ),
        inactiveIcon: Image.asset(
          socNavIcon,
          height: 30,
          width: 30,
          color: CupertinoColors.systemGrey,
        ),
        title: ("Social"),
        activeColorPrimary: navColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          profileNavIcon,
          height: 30,
          width: 30,
          color: navColor,
        ),
        inactiveIcon: Image.asset(
          profileNavIcon,
          height: 30,
          width: 30,
          color: CupertinoColors.systemGrey,
        ),
        title: ("Profile"),
        activeColorPrimary: navColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = PersistentTabController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
            actionsWidget: [
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: SizedBox(
                  width: 90,
                  height: 50,
                  child: Row(
                    children: [
                      CircleAvatar(
                        maxRadius: 30,
                        backgroundColor: Colors.black12,
                        child: Image.asset(
                          noProfileImage,
                          height: 25,
                          width: 25,
                        ),
                      ),
                      Image.asset(
                        lineIcon,
                        height: 20,
                        width: 15,
                      ),
                      const SizedBox(
                        width: 10,
                      )
                    ],
                  ),
                ),
              ),
            ],
            showBackArrow: false,
            centerTitle: false,
            isSearchBar: true,
            showLeadingArrow: false,
            actionSearch: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                appLogo,
                alignment: Alignment.center,
                fit: BoxFit.fill,
                width: 150,
              ),
            )),
        body: Stack(
          children: [
            PersistentTabView(
              context,
              controller: _controller,
              screens: _buildScreens(),
              items: _navBarsItems(),
              confineInSafeArea: true,
              backgroundColor: Colors.transparent,
              // Default is Colors.white.
              handleAndroidBackButtonPress: true,
              // Default is true.
              resizeToAvoidBottomInset: true,
              // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
              stateManagement: true,
              // Default is true.
              hideNavigationBarWhenKeyboardShows: true,
              // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
              decoration: const NavBarDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  colorBehindNavBar: Colors.transparent,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.transparent,
                      offset: Offset(
                        5.0,
                        5.0,
                      ),
                      blurRadius: 10.0,
                      spreadRadius: 5.0,
                    ), //BoxShadow
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                    ),
                  ]
              ),
              popAllScreensOnTapOfSelectedTab: true,
              popActionScreens: PopActionScreensType.all,
              itemAnimationProperties: const ItemAnimationProperties(
                // Navigation Bar's items animation properties.
                duration: Duration(milliseconds: 200),
                curve: Curves.ease,
              ),
              screenTransitionAnimation: const ScreenTransitionAnimation(
                // Screen transition animation on change of selected tab.
                animateTabTransition: true,
                curve: Curves.ease,
                duration: Duration(milliseconds: 200),
              ),
              navBarHeight: 70,
              navBarStyle: NavBarStyle
                  .style3, // Choose the nav bar style with this property.
            ),
            Positioned(
              left: 0,
              right: 0,
              top: -40,
              child: Container(
                height: 50,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
