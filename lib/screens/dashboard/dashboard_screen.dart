import 'package:assignment/commons/utils.dart';
import 'package:assignment/commons/widgets/common_list_view.dart';
import 'package:assignment/constants/colors.dart';
import 'package:assignment/constants/common_textstyles.dart';
import 'package:assignment/constants/strings.dart';
import 'package:flutter/material.dart';

import 'package:assignment/constants/assets_images.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  final ScrollController cScrollController = ScrollController();
  final ScrollController lScrollController = ScrollController();
  var bookableMenuList = [
    {
      "imagePath": cardImage1,
      "title": "Hawkhurst Fish Farm",
      "desc": "Hawkhurst, Kent",
      "likeImagePath": loveIcon
    },
    {
      "imagePath": cardImage2,
      "title": "Elphicks Fishery",
      "desc": "Horsonden, Kent",
      "likeImagePath": loveIcon
    },
    {
      "imagePath": cardImage3,
      "title": "Brickyard Fishery",
      "desc": "Ripon, Yorkshire",
      "likeImagePath": loveIcon
    }
  ];
  var liveCatchReportList = [
    {
      "imagePath": liveCatch1,
      "userName": "Adrian Spooner",
      "userDec": "Mirror Carp | 19lb 8oz",
      "userLocationName": "Bramley Lake",
      "userDate": "13/02/23 - 20:48",
      "userIcon": userBlueIcon,
      "locationIcon": locationIcon,
      "dateIcon": dateWhiteIcon,
    },
    {
      "imagePath": liveCatch2,
      "userName": "Adrian Spooner",
      "userDec": "Mirror Carp | 23lb 3oz",
      "userLocationName": "Bramley Lake",
      "userDate": "13/02/23 - 20:48",
      "userIcon": userBlueIcon,
      "locationIcon": locationIcon,
      "dateIcon": dateWhiteIcon,
    },
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 2.5.h),
            Container(
              height: 102,
              width: 100.w,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    gradientColor1,
                    gradientColor2,
                    gradientColor3,
                    gradientColor4,
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    searchLocationFisheryName,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 1.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      width: 100.w,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30)),
                        border: Border.all(
                          color: borderColor,
                          width: 0.5,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            searchIcon,
                            height: 20,
                            width: 20,
                          ),
                          SizedBox(width: 1.w),
                          const Text(
                            searchDec,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 1.h),
            Container(
              width: 100.w,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Column(
                children: [
                  SizedBox(height: 2.h),
                  Image.asset(
                    semTMImage,
                    alignment: Alignment.center,
                    fit: BoxFit.fill,
                    width: 230,
                  ),
                  SizedBox(height: 1.h),
                  gridViewWidget(),
                  SizedBox(height: 1.h),
                  dividerWidget(),
                  SizedBox(height: 1.h),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              dateIcon,
                              width: 20,
                              height: 20,
                            ),
                            SizedBox(width: 1.w),
                            const Text(
                              bookableVenuesText,
                              style: t16BGw600,
                            ),
                          ],
                        ),
                        const Row(children: [
                          Text(
                            swipeForMoreText,
                            style: t12n,
                          ),
                          Icon(
                            Icons.arrow_right_alt_rounded,
                            size: 20,
                          )
                        ]),
                      ],
                    ),
                  ),
                  bookableListViewWidget(),
                  SizedBox(height: 1.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        mapIcon,
                        width: 20,
                        height: 20,
                      ),
                      SizedBox(width: 1.w),
                      Text(
                        viewVenuesOnMapText,
                        style: const TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w300)
                            .copyWith(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 3.h),
                  dividerWidget(),
                  SizedBox(height: 1.h),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              fishingRodIcon,
                              width: 20,
                              height: 20,
                            ),
                            SizedBox(width: 1.w),
                            const Text(
                              liveCatchReportText,
                              style: t16BGw600,
                            ),
                          ],
                        ),
                        const Row(children: [
                          Text(
                            swipeForMoreText,
                            style: t12n,
                          ),
                          Icon(
                            Icons.arrow_right_alt_rounded,
                            size: 20,
                          )
                        ]),
                      ],
                    ),
                  ),
                  liveCatchReportListViewWidget(),
                  SizedBox(height: 3.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        fishingSubmitIcon,
                        width: 20,
                        height: 20,
                      ),
                      SizedBox(width: 1.w),
                      Text(
                        submitCatchReportText,
                        style: const TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w300)
                            .copyWith(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 3.h),
                  dividerWidget(),
                  SizedBox(height: 2.h),
                ],
              ),
            ),
            SizedBox(height: 1.h),
            anglingSocialWidget(),
            SizedBox(height: 1.h),
            inviteWidget(),
            SizedBox(height: 10.h),
          ],
        ),
      ),
      // bottomNavigationBar: const BottomBarScreen(),
    );
  }

  Widget gridViewWidget() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: 270,
        child: GridView(
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: 1.5),
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CommonListView(
                          icon: flythroughsIcon,
                          list: sbFlythroughsList,
                          isVisible: true,
                          title: "S",
                          title1: "B Flythroughs"),
                    ));
              },
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                    image: AssetImage(flyBackgroundImage),
                    alignment: Alignment.center,
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      flythroughsIcon,
                      height: 50,
                      width: 40,
                    ),
                    const Text(
                      flythroughsText,
                      style: t16WGw600,
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CommonListView(
                          icon: virtualToursIcon,
                          list: sbFlythroughsList,
                          isVisible: false,
                          title: "V",
                          title1: "irtrual Tours"),
                    ));
              },
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                    image: AssetImage(vtBackgroundImage),
                    alignment: Alignment.center,
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      virtualToursIcon,
                      height: 50,
                      width: 40,
                    ),
                    const Text(
                      virtualToursText,
                      style: t16WGw600,
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CommonListView(
                          icon: virtualToursIcon,
                          list: sbFlythroughsList,
                          isVisible: true,
                          title: "S",
                          title1: "B Diaries"),
                    ));
              },
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                    image: AssetImage(sbBackgroundImage),
                    alignment: Alignment.center,
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      fishIcon,
                      height: 40,
                      width: 60,
                    ),
                    const Text(
                      sBDiariesText,
                      style: t16WGw600,
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                    image: AssetImage(asBackgroundImage),
                    alignment: Alignment.center,
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      notificationIcon,
                      height: 40,
                      width: 40,
                    ),
                    const Text(
                      anglingSocialText,
                      style: t16WGw600,
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

  Widget bookableListViewWidget() {
    return Padding(
      padding: const EdgeInsets.only(left: 05, right: 05, top: 05),
      child: SizedBox(
        height: 200,
        child: Row(
          children: [
            Expanded(
              child: ScrollbarTheme(
                data: ScrollbarThemeData(
                  thumbColor: MaterialStateProperty.all<Color>(
                      darkBlue.withOpacity(0.2)),
                  trackColor: MaterialStateProperty.all<Color>(
                      darkBlue.withOpacity(0.2)),
                  crossAxisMargin: 0.0,
                ),
                child: Scrollbar(
                  thumbVisibility: true,
                  controller: cScrollController,
                  child: ListView.builder(
                    shrinkWrap: true,
                    controller: cScrollController,
                    scrollDirection: Axis.horizontal,
                    itemCount: bookableMenuList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 174,
                              width: 248,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                image: DecorationImage(
                                  image: AssetImage(bookableMenuList[index]
                                          ["imagePath"]
                                      .toString()),
                                  alignment: Alignment.center,
                                  fit: BoxFit.fill,
                                ),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(15)),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    bottom: 10,
                                    left: 0,
                                    right: 0,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Text(
                                            bookableMenuList[index]["title"]
                                                .toString(),
                                            style: GoogleFonts.poppins(
                                              textStyle: cwt16B,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Text(
                                            bookableMenuList[index]["desc"]
                                                .toString(),
                                            style: GoogleFonts.poppins(
                                              textStyle: cwt16n,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    top: 15,
                                    // Adjust the positioning as needed
                                    right: 15,
                                    // Adjust the positioning as needed
                                    child: Image.asset(
                                      bookableMenuList[index]["likeImagePath"]
                                          .toString(),
                                      height: 20,
                                      width: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget liveCatchReportListViewWidget() {
    return Padding(
      padding: const EdgeInsets.only(left: 05, right: 05, top: 05),
      child: SizedBox(
        height: 200,
        child: Row(
          children: [
            Expanded(
              child: ScrollbarTheme(
                data: ScrollbarThemeData(
                  thumbColor: MaterialStateProperty.all<Color>(
                      darkBlue.withOpacity(0.2)),
                  trackColor: MaterialStateProperty.all<Color>(
                      darkBlue.withOpacity(0.2)),
                  crossAxisMargin: 0.0,
                ),
                child: Scrollbar(
                  thumbVisibility: true,
                  controller: lScrollController,
                  child: ListView.builder(
                    shrinkWrap: true,
                    controller: lScrollController,
                    scrollDirection: Axis.horizontal,
                    itemCount: liveCatchReportList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: 174,
                              width: 248,
                              child: Stack(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          liveCatchReportList[index]
                                                  ["imagePath"]
                                              .toString(),
                                        ),
                                        alignment: Alignment.center,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    right: 0,
                                    child: Container(
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.5),
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(15),
                                          bottomRight: Radius.circular(15),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 10,
                                    left: 0,
                                    right: 0,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              liveCatchReportList[index]
                                                      ["locationIcon"]
                                                  .toString(),
                                              width: 15,
                                              height: 15,
                                            ),
                                            SizedBox(width: 1.w),
                                            Text(
                                              liveCatchReportList[index]
                                                      ["userLocationName"]
                                                  .toString(),
                                              style: GoogleFonts.poppins(
                                                textStyle: t10B,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              liveCatchReportList[index]
                                                      ["dateIcon"]
                                                  .toString(),
                                              width: 15,
                                              height: 15,
                                            ),
                                            SizedBox(width: 1.w),
                                            Text(
                                              liveCatchReportList[index]
                                                      ["userDate"]
                                                  .toString(),
                                              style: GoogleFonts.poppins(
                                                textStyle: t10B,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 40,
                                    left: 0,
                                    right: 0,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Container(
                                        height: 30,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Image.asset(
                                              liveCatchReportList[index]
                                                      ["userIcon"]
                                                  .toString(),
                                              height: 20,
                                              width: 20,
                                            ),
                                            Text(
                                              liveCatchReportList[index]
                                                      ["userName"]
                                                  .toString(),
                                              style: GoogleFonts.poppins(
                                                textStyle: t10BB,
                                              ),
                                            ),
                                            Container(
                                                height: 20,
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 0,
                                                        vertical: 0),
                                                width: 0.5,
                                                color: black.withOpacity(
                                                    0.4) // Custom style
                                                ),
                                            Text(
                                              liveCatchReportList[index]
                                                      ["userDec"]
                                                  .toString(),
                                              style: GoogleFonts.poppins(
                                                textStyle: t10BB,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 15,
                                    right: 15,
                                    child: Image.asset(
                                      bookableMenuList[index]["likeImagePath"]
                                          .toString(),
                                      height: 20,
                                      width: 20,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget anglingSocialWidget() {
    return Container(
      width: 100.w,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Column(
        children: [
          SizedBox(height: 2.h),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      bellIcon,
                      width: 22,
                      height: 22,
                    ),
                    SizedBox(width: 1.w),
                    const Text(
                      theAnglingSocialText,
                      style: t16BGw600,
                    ),
                  ],
                ),
                Row(children: [
                  Text(
                    seeMoreText,
                    style: t12n.copyWith(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  const Icon(
                    Icons.arrow_right_alt_rounded,
                    size: 20,
                  )
                ]),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      asCardImage1,
                      alignment: Alignment.center,
                      fit: BoxFit.fill,
                      width: 142,
                      height: 105,
                    ),
                    SizedBox(width: 2.w),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            asCardText1Dec,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 1.h),
                          Container(
                              height: 0.5,
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 0),
                              width: 20,
                              color: black.withOpacity(0.6) // Custom style
                              ),
                          SizedBox(height: 1.h),
                          const Text(
                            asCardText1Time,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 12),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      asCardImage2,
                      alignment: Alignment.center,
                      fit: BoxFit.fill,
                      width: 142,
                      height: 105,
                    ),
                    SizedBox(width: 2.w),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            asCardText2Dec,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 1.h),
                          Container(
                              height: 0.5,
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 0),
                              width: 20,
                              color: black.withOpacity(0.6) // Custom style
                              ),
                          SizedBox(height: 1.h),
                          const Text(
                            asCardText2Time,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 12),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      asCardImage3,
                      alignment: Alignment.center,
                      fit: BoxFit.fill,
                      width: 142,
                      height: 105,
                    ),
                    SizedBox(width: 2.w),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            asCardText3Dec,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 1.h),
                          Container(
                              height: 0.5,
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 0),
                              width: 20,
                              color: black.withOpacity(0.6) // Custom style
                              ),
                          SizedBox(height: 1.h),
                          const Text(
                            asCardText3Time,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 03.h),
        ],
      ),
    );
  }

  Widget inviteWidget() {
    return Container(
      width: 100.w,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Column(
        children: [
          SizedBox(height: 4.h),
          Image.asset(
            supportImage,
            alignment: Alignment.center,
            fit: BoxFit.fill,
            width: 69,
            height: 69,
          ),
          SizedBox(height: 2.h),
          const Text(
            inviteTitleText,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Gilroy',
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 1.h),
          const Text(
            inviteDesText,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF787878),
              fontSize: 14,
              fontFamily: 'Gilroy',
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 3.h),
          const Padding(
            padding: EdgeInsets.only(left: 45),
            child: Column(children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  inviteAppStoreLinkText,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ]),
          ),
          SizedBox(height: 0.5.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              children: [
                Container(
                  width: 292,
                  height: 34,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          width: 0.50, color: Color(0xFFD5D5D5)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 05, right: 0, top: 05),
                    child: Text(
                      inviteAppStoreLinkValueText,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 3.w),
                Image.asset(
                  copyIconImage,
                  alignment: Alignment.center,
                  fit: BoxFit.fill,
                  width: 24,
                  height: 24,
                ),
              ],
            ),
          ),
          SizedBox(height: 03.h),
          const Padding(
            padding: EdgeInsets.only(left: 45),
            child: Column(children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  inviteGooglePlayStoreLinkText,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ]),
          ),
          SizedBox(height: 0.5.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              children: [
                Container(
                  width: 292,
                  height: 34,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          width: 0.50, color: Color(0xFFD5D5D5)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 05, right: 0, top: 05),
                    child: Text(
                      inviteGooglePlayStoreLinkValueText,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 3.w),
                Image.asset(
                  copyIconImage,
                  alignment: Alignment.center,
                  fit: BoxFit.fill,
                  width: 24,
                  height: 24,
                ),
              ],
            ),
          ),
          SizedBox(height: 08.h),
        ],
      ),
    );
  }
}
