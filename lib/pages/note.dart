import 'package:flutter/material.dart';

class Note extends StatefulWidget {
  const Note({super.key});

  @override
  State<Note> createState() => _NoteState();
}

class _NoteState extends State<Note> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: TabBarDemo(),
      ),
    );
  }
}

//tab bar

class TabBarDemo extends StatefulWidget {
  @override
  _TabBarDemoState createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo> {
  final List<Tab> myTabs = [
    Tab(
      text: 'กำลังขนส่งสินค้า',
    ),
    Tab(text: 'งานเสร็จสิ้น'),
    Tab(text: 'ยกเลิก'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFEF6262),
          title: Center(child: Text('งานขนส่ง')),
          bottom: TabBar(
            tabs: myTabs,
            indicatorColor: Color(0xFFEF6262),
          ),
        ),
        body: TabBarView(
          children: [
            MyCardList(),
            Center(child: Text('งานเสร็จสิ้น')),
            Center(child: Text('ยกเลิก')),
          ],
        ),
      ),
    );
  }
}

class MyCardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        MyCard(
          header: 'วัน ส., ส.ค. 12, 9.30',
          footerLeft: 'รถกระบะตู้ทึบ',
          footerRight: '฿611.00',
          content1: '2, ตำบล บางบัวทอง',
          content2: 'ธนนันท์อพาร์ทเม้นท์',
        ),
        MyCard(
          header: 'วัน ส., ส.ค. 12, 9.30',
          footerLeft: 'รถกระบะตู้ทึบ',
          footerRight: '฿611.00',
          content1: '2, ตำบล บางบัวทอง',
          content2: 'ธนนันท์อพาร์ทเม้นท์',
        ),
        MyCard(
          header: 'วัน ส., ส.ค. 12, 9.30',
          footerLeft: 'รถกระบะตู้ทึบ',
          footerRight: '฿611.00',
          content1: '2, ตำบล บางบัวทอง',
          content2: 'ธนนันท์อพาร์ทเม้นท์',
        ),
        // You can add more cards here
      ],
    );
  }
}

class MyCard extends StatelessWidget {
  final String header;
  final String footerLeft;
  final String footerRight;
  final String content1;
  final String content2;

  MyCard(
      {required this.header,
      required this.footerLeft,
      required this.footerRight,
      required this.content1,
      required this.content2});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          ListTile(
            title: Text(
              header,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            trailing: Text(
              'กำลังรอคนขับ',
              style: TextStyle(fontSize: 18, color: Colors.green),
            ),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.place),
                  title: Text(content1),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text(content2),
                ),
              ],
            ),
          ),
          Divider(),
          ListTile(
            title: Text(
              footerLeft,
              style: TextStyle(fontSize: 18),
            ),
            trailing: Text(
              footerRight,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
