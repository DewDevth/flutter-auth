import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color? red800 = Colors.red[800];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.menu,
          color: red800,
        ),
        primary: false,
        title: TextField(
            decoration: InputDecoration(
                hintText: "Search",
                border: InputBorder.none,
                hintStyle: TextStyle(color: Colors.grey))),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: red800),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.notifications, color: red800),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'ประเภทรถที่ใช้ได้',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 10),
          MyCard(
            imageAsset:
                'data:image/png;base64,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',
            textLine1: 'รถกระบะโครงเหล็กสูง',
            textLine2: 'รถกระบะ โครงเหล็กสูง เเละ หนักพิเศษ',
            textLine3: '1.7 x 1.8 x1.7 เมตร สูงสุด 1100',
          ),
          MyCard(
            imageAsset:
                'data:image/png;base64,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',
            textLine1: 'รถกระบะโครงเหล็กสูง',
            textLine2: 'รถกระบะ โครงเหล็กสูง เเละ หนักพิเศษ',
            textLine3: '1.7 x 1.8 x1.7 เมตร สูงสุด 1100',
          ),
          MyCard(
            imageAsset:
                'data:image/png;base64,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',
            textLine1: 'รถกระบะโครงเหล็กสูง',
            textLine2: 'รถกระบะ โครงเหล็กสูง เเละ หนักพิเศษ',
            textLine3: '1.7 x 1.8 x1.7 เมตร สูงสุด 1100',
          ),
          MyCard(
            imageAsset:
                'data:image/png;base64,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',
            textLine1: 'รถกระบะโครงเหล็กสูง',
            textLine2: 'รถกระบะ โครงเหล็กสูง เเละ หนักพิเศษ',
            textLine3: '1.7 x 1.8 x1.7 เมตร สูงสุด 1100',
          ),
        ],
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final String imageAsset;
  final String textLine1;
  final String textLine2;
  final String textLine3;

  MyCard(
      {required this.imageAsset,
      required this.textLine1,
      required this.textLine2,
      required this.textLine3});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0), // Adjust the value as needed
      ),
      elevation: 5.0,
      margin: EdgeInsets.all(16.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: [
            Image.network(
              imageAsset,
              width: 60,
              height: 60,
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(textLine1, style: TextStyle(fontSize: 16)),
                  Text(textLine2, style: TextStyle(fontSize: 16)),
                  Text(textLine3, style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
