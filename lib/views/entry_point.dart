import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import 'package:get/get.dart';

import 'package:shopify/constants/constants.dart';
import 'package:shopify/controllers/tab_index_controller.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TabIndexController());
    return Obx(() => Scaffold(
          body: Stack(
            children: [
              Container(height: height, width: width, color: kOffWhite),
              Align(
                alignment: Alignment.bottomCenter,
                child: Theme(
                    data: Theme.of(context).copyWith(canvasColor: kPrimary),
                    child: BottomNavigationBar(
                      showSelectedLabels: false,
                      showUnselectedLabels: false,
                      unselectedIconTheme:
                          const IconThemeData(color: Colors.black38),
                      selectedIconTheme: const IconThemeData(color: kSecondary),
                      onTap: (value) {
                        controller.setTabIndex = value;
                      },
                      currentIndex: controller.tabIndex,
                      items: [
                        BottomNavigationBarItem(
                          icon: controller.tabIndex == 0
                              ? Icon(AntDesign.appstore1)
                              : Icon(AntDesign.appstore_o),
                          label: 'Home',
                        ),
                        const BottomNavigationBarItem(
                          icon: Icon(Icons.search),
                          label: 'Search',
                        ),
                        const BottomNavigationBarItem(
                          icon: Badge(
                              label: Text("2"),
                              child: Icon(FontAwesome.opencart)),
                          label: 'Cart',
                        ),
                        BottomNavigationBarItem(
                          icon: controller.tabIndex == 3
                              ? const Icon(FontAwesome.user_circle)
                              : const Icon(FontAwesome.user_circle_o),
                          label: 'Account',
                        ),
                      ],
                    )),
              )
            ],
          ),
        ));
  }
}
