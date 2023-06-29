import 'package:assignment/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CommonListView extends StatefulWidget {
  final String? title;
  final String? title1;
  final bool? isVisible;
  final String? icon;
  final List<dynamic>? list;

  const CommonListView(
      {super.key,
      this.title,
      this.title1,
      this.isVisible,
      this.icon,
      this.list});

  @override
  State<CommonListView> createState() => _CommonListViewState();
}

class _CommonListViewState extends State<CommonListView> {
  final ScrollController clScrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          SizedBox(
            height: 1.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const CircleAvatar(
                    maxRadius: 22,
                    backgroundColor: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.only(right: 0, left: 10),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 1.w),
                Row(
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: widget.title,
                            style: const TextStyle(
                              color: Color(0xFF2772AF),
                              fontSize: 20,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: widget.title1,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(width: 2.w),
                    Image.asset(
                      widget.icon!,
                      color: navColor,
                      height: 23,
                      width: 23,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
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
                  controller: clScrollController,
                  child: ListView.builder(
                    shrinkWrap: true,
                    controller: clScrollController,
                    scrollDirection: Axis.vertical,
                    itemCount: widget.list!.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 174,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                image: DecorationImage(
                                  image: AssetImage(widget.list![index]
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
                                    top: 10,
                                    left: 20,
                                    right: 0,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              gradient: LinearGradient(
                                                colors: [
                                                  Colors.black.withOpacity(0.3),
                                                  Colors.black.withOpacity(0.3),
                                                ],
                                                begin: Alignment.bottomCenter,
                                                end: Alignment.topCenter,
                                              ),
                                            ),
                                            child: Text(
                                              widget.list![index]["title"]
                                                  .toString(),
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontFamily: 'Gilroy',
                                                fontWeight: FontWeight.w600,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 10,
                                    left: 20,
                                    right: 0,
                                    child: Visibility(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                gradient: LinearGradient(
                                                  colors: [
                                                    Colors.black
                                                        .withOpacity(0.3),
                                                    Colors.black
                                                        .withOpacity(0.3),
                                                  ],
                                                  begin: Alignment.bottomCenter,
                                                  end: Alignment.topCenter,
                                                ),
                                              ),
                                              child: Text(
                                                widget.list![index]["desc"]
                                                    .toString(),
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontFamily: 'Gilroy',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 20,
                                    right: 20,
                                    child: widget.isVisible!
                                        ? Image.asset(
                                            widget.icon.toString(),
                                            height: 30,
                                            width: 30,
                                          )
                                        : const SizedBox(height: 30, width: 30),
                                  ),
                                  Positioned(
                                    top: 130,
                                    right: 20,
                                    child: widget.isVisible!
                                        ?Image.asset(
                                      widget.list![index]["likeImagePath"]
                                          .toString(),
                                      height: 30,
                                      width: 30,
                                    ):const SizedBox(height: 30, width: 30),
                                  ),
                                  Positioned(
                                    top: 75,
                                    right: 20,
                                    child: !widget.isVisible!
                                        ? Image.asset(
                                            widget.icon.toString(),
                                            height: 30,
                                            width: 30,
                                          )
                                        : const SizedBox(height: 30, width: 30),
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
          ),
        ]),
      ),
    );
  }
}
