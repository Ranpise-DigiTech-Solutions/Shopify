// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopify/common/custom_appbar.dart';
import 'package:shopify/common/custom_container.dart';
import 'package:shopify/constants/constants.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  Widget customAppBar = const CustomAppbar();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimary,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90.h),
          child: customAppBar,
        ),
        body: SafeArea(
          child: CustomContainer(
            containerContent: Container(),
          ),
        ));
  }
}
