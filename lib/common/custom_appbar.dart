import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:shopify/common/app_style.dart';
import 'package:shopify/common/reusable_text.dart';
import 'package:shopify/constants/constants.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.h,
      width: double.infinity,
      color: kOffWhite,
      child: Container(
        margin:
            EdgeInsets.only(top: 20.h, right: 10.h, left: 10.h, bottom: 10.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 23.r,
                  backgroundColor: kSecondary,
                  backgroundImage: const NetworkImage(
                      "https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg"),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 6.h, left: 8.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ReusableText(
                        text: 'Deliver To',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: kSecondary,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.65,
                        child: Text("16768 21st Ave N, Plymouth, MN 55447",
                            overflow: TextOverflow.ellipsis,
                            style: appStyle(11, kGrayLight, FontWeight.normal)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Flexible(
              child: Text(
                getTimeOfDay(),
                style: const TextStyle(
                  fontSize: 35,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String getTimeOfDay() {
    DateTime now = DateTime.now();
    int hour = now.hour;

    if (hour >= 0 && hour < 12) {
      return ' ☀️ ';
    } else if (hour >= 12 && hour < 16) {
      return ' ⛅ ';
    } else {
      return ' 🌙 ';
    }
  }
}
