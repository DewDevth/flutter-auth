import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';
import '../pages/chart.dart';
import '../pages/home.dart';
import '../pages/note.dart';
import '../pages/setting.dart';
import 'package:iconly/iconly.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  final controller = Get.put(NavBarController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavBarController>(builder: (context) {
      return Scaffold(
        body: IndexedStack(
          index: controller.tabIndex,
          children: const [
            Home(),
            Note(),
            Chart(),
            Setting(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color(0xFFEF6262),
          unselectedItemColor: Color(0xFF27374D),
          currentIndex: controller.tabIndex,
          onTap: controller.changeTabIndex,
          elevation: 8,
          items: [
            _bottombarItem(IconlyBold.home, "หน้าหลัก"),
            _bottombarItem(IconlyBold.document, "งานขนส่ง"),
            _bottombarItem(IconlyBold.chart, "รายงาน"),
            _bottombarItem(IconlyBold.setting, "ตั้งค่า"),
          ],
        ),
      );
    });
  }
}

BottomNavigationBarItem _bottombarItem(IconData iconData, String label) {
  return BottomNavigationBarItem(
    backgroundColor: Colors.white,
    icon: Icon(iconData),
    label: label,
  );
}
