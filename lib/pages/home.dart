import 'package:flutter/material.dart';
import 'package:frontend/pages/type_detail.dart';
import 'package:frontend/services/auth_service.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/car_type_controller.dart';
import '../widgets/CarType_Card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color? red800 = Colors.red[800];
  List items = [];
  String typeId = "";
  String typeTitle = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'My App',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,

          // leading: Icon(
          //   Icons.menu,
          //   color: red800,
          // ),

          primary: false,
          // title: TextField(
          //     decoration: InputDecoration(
          //         hintText: "Search",
          //         border: InputBorder.none,
          //         hintStyle: TextStyle(color: Colors.grey))),
          actions: <Widget>[
            // IconButton(
            //   icon: Icon(Icons.search, color: red800),
            //   onPressed: () {},
            // ),
            IconButton(
              icon: Icon(Icons.notifications, color: red800),
              onPressed: () {},
            )
          ],
        ),
        body: RefreshIndicator(
          onRefresh: getData,
          child: Visibility(
            visible: items.isNotEmpty,
            replacement: Center(
              child: Text(
                'ไม่มีข้อมูล',
                style: GoogleFonts.bebasNeue(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            child: ListView.builder(
              itemBuilder: (context, index) {
                final item = items[index] as Map;

                return InkWell(
                  onTap: () {
                    selectType(item['_id'], item['title']);
                    Get.to(
                      // Get.toNamed('/navbar'),
                      () => TypeDetailPage(
                        typeId: typeId,
                        typeTitle: typeTitle,
                      ),
                    );
                    // _showPopup(context);
                  },
                  child: CarTypeCard(
                    imageAsset: item['image'],
                    title: item['title'],
                    detail: item['detail'],
                    size: item['size'],
                  ),
                );
              },
              itemCount: items.length,
              padding: EdgeInsets.all(8),
            ),
          ),
        ));
  }

  Future<void> getData() async {
    final response = await ApiService.getCarTypeList();
    if (response != null) {
      setState(() {
        items = response;
      });
      // print(items);
    } else {
      print('error');
      // showErrorMessage(context, message: "Something went wrong");
      // setState(() {
      //   isLoading = false;
      // });
    }
  }

  void selectType(String id, String title) {
    setState(() {
      typeId = id;
      typeTitle = title;
    });
    // print(typeId);
  }

  // void _showPopup(BuildContext context) {
  //   TextEditingController emailController = TextEditingController();
  //   TextEditingController passwordController = TextEditingController();

  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         title: Text('ประเภทรถ $typeTitle'),
  //         content: Column(
  //           mainAxisSize: MainAxisSize.min,
  //           children: [
  //             ListTile(
  //               leading: Icon(Icons.email),
  //               title: TextField(
  //                 controller: emailController,
  //                 decoration: InputDecoration(
  //                   hintText: 'Enter your email',
  //                 ),
  //               ),
  //             ),
  //             ListTile(
  //               leading: Icon(Icons.lock),
  //               title: TextField(
  //                 controller: passwordController,
  //                 obscureText: true,
  //                 decoration: InputDecoration(
  //                   hintText: 'Enter your password',
  //                 ),
  //               ),
  //             ),
  //           ],
  //         ),
  //         actions: [
  //           Padding(
  //             padding: const EdgeInsets.symmetric(horizontal: 25.0),
  //             child: InkWell(
  //               onTap: () {
  //                 submitData(typeId, emailController.text);
  //               },
  //               child: Container(
  //                 padding: EdgeInsets.all(20),
  //                 decoration: BoxDecoration(
  //                   color: Color(0xFFEF6262),
  //                   borderRadius: BorderRadius.circular(12),
  //                 ),
  //                 child: Center(
  //                   child: Text(
  //                     'ยืนยัน',
  //                     style: TextStyle(
  //                       color: Colors.white,
  //                       fontWeight: FontWeight.bold,
  //                       fontSize: 18,
  //                     ),
  //                   ),
  //                 ),
  //               ),
  //             ),
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }

  // void submitData(String typeId, String email) {
  //   final body = {"typeId": typeId, "email": email};
  //   print(body);
  // }
}
