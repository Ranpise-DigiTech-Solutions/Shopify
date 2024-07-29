import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopify/common/custom_container.dart';
import 'package:shopify/constants/constants.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimary,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90.h),
          child: Container(
            height: 90.h,
          ),
        ),
        body: SafeArea(
          child: CustomContainer(
            containerContent: Container(),
          ),
        ));
  }
}
