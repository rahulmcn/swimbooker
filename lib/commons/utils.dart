import 'package:assignment/constants/assets_images.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:assignment/constants/colors.dart';

var sbFlythroughsList = [
  {
    "imagePath": rectangle1Image,
    "title": "Coole Acres Fishery\n& Leisure Park",
    "desc": "Cheshire, CW5 8AY",
    "likeImagePath": youtubeIcon
  },
  {
    "imagePath": rectangle2Image,
    "title": "Brickyard Fishery",
    "desc": "Yorkshire, YO13 2FR",
    "likeImagePath": youtubeIcon
  },
  {
    "imagePath": rectangle3Image,
    "title": "Angel’s Lakes",
    "desc": "Stourbridge, WV15 6EV",
    "likeImagePath": youtubeIcon
  },
  {
    "imagePath": rectangle4Image,
    "title": "A12 Cuton Lakes",
    "desc": "Chelmsford, CM12 4NU",
    "likeImagePath": youtubeIcon
  },
  {
    "imagePath": rectangle1Image,
    "title": "Coole Acres Fishery\n& Leisure Park",
    "desc": "Cheshire, CW5 8AY",
    "likeImagePath": youtubeIcon
  },
  {
    "imagePath": rectangle2Image,
    "title": "Brickyard Fishery",
    "desc": "Yorkshire, YO13 2FR",
    "likeImagePath": youtubeIcon
  },
  {
    "imagePath": rectangle3Image,
    "title": "Angel’s Lakes",
    "desc": "Stourbridge, WV15 6EV",
    "likeImagePath": youtubeIcon
  },
  {
    "imagePath": rectangle4Image,
    "title": "A12 Cuton Lakes",
    "desc": "Chelmsford, CM12 4NU",
    "likeImagePath": youtubeIcon
  }
];

FToast fToast = FToast();

RoundedRectangleBorder roundedRectangleBorder = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15),
    side: const BorderSide(color: lightGrey, width: 0.5));

Widget loading() => const Center(
      child: CircularProgressIndicator(
        backgroundColor: Colors.transparent,
        color: darkBlue,
      ),
    );

Widget noDataFoundWidget() => const Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        "noDataFound",
      ),
    );

Widget comingSoonWidget() => const Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        "Coming soon",
      ),
    );

Widget dividerWidget() => Container(
    height: 0.5,
    margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
    width: 150,
    color: black.withOpacity(0.6) // Custom style
    );
