import 'package:assignment/commons/utils.dart';
import 'package:assignment/commons/widgets/custom_appbar.dart';
import 'package:assignment/constants/assets_images.dart';
import 'package:assignment/constants/colors.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class comingSoon extends StatefulWidget {
  const comingSoon({super.key});

  @override
  State<comingSoon> createState() => _comingSoonState();
}

// ignore: camel_case_types
class _comingSoonState extends State<comingSoon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      body:Center(
        child: comingSoonWidget(),
      ),
    );
  }
}
