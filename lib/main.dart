// import 'package:flutter/material.dart';
// import 'package:frontend/screens/pages/home_page.dart';
// import 'package:frontend/screens/pages/login_page.dart';
// import 'package:frontend/screens/pages/register_page.dart';
// import 'package:get/get_navigation/src/root/get_material_app.dart';
// import 'package:get/get_navigation/src/routes/get_route.dart';
// import 'package:get/get_navigation/src/routes/transitions_type.dart';

// import 'package:shared_preferences/shared_preferences.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   String? token = "";
//   // ฟังก์ชันในการอ่านค่า token จาก SharedPreferences
//   _loadToken() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     setState(() {
//       token = prefs.getString('token');
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     _loadToken();
//     print('token${token}');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//         initialRoute: '/', // Set the initial route here
//         getPages: [
//           // GetPage(
//           //   name: '/home',
//           //   page: () => HomePage(),
//           // ),
//           GetPage(
//             name: '/',
//             transition: Transition.leftToRight,
//             page: () => LoginPage(),
//           ),
//           GetPage(
//             name: '/register',
//             transition: Transition.rightToLeft,
//             transitionDuration: const Duration(seconds: 5),
//             page: () => const RegisterPage(),
//           ),
//         ],
//         debugShowCheckedModeBanner: false,
//         theme: ThemeData.dark());

//     // home: token == null ? LoginPage() : HomePage());
//     // home: LoginPage());
//   }
// }
import 'package:flutter/material.dart';
import 'package:frontend/routes/routes.dart';
import 'package:get/get.dart';

import 'middleware/authMiddleware.dart';

void main() {
  runApp(GetMaterialApp(
    themeMode: ThemeMode.dark,
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    defaultTransition: Transition.fade,
    getPages: AppPage.routes,
  ));
}
