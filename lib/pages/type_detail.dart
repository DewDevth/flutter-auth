import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TypeDetailPage extends StatefulWidget {
  TypeDetailPage({
    Key? key,
    required this.typeId,
    required this.typeTitle,
  }) : super(key: key);

  final String typeId;
  final String typeTitle;

  @override
  State<TypeDetailPage> createState() => _TypeDetailPageState();
}

class _TypeDetailPageState extends State<TypeDetailPage> {
  final TextEditingController nameDeliveryController = TextEditingController();
  final TextEditingController detailDeliveryController =
      TextEditingController();
  final TextEditingController telDeliveryController = TextEditingController();
  final TextEditingController namePickupController = TextEditingController();
  final TextEditingController detailPickupController = TextEditingController();
  final TextEditingController telPickupController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController timeController = TextEditingController();

  String? _selectedOption;
  List<Map<String, dynamic>> _options = [
    {'value': 'now', 'label': 'ทันที'},
    {'value': 'after', 'label': 'ภายหลัง'},
  ];

  DateTime _selectedDate = DateTime.now();
  TimeOfDay _selectedTime = TimeOfDay.now();

  @override
  void initState() {
    super.initState();

    // print(widget.typeId);
    // print(widget.typeTitle);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.typeTitle,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        primary: false,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                //logo
                Center(
                  child: Image.asset(
                    'assets/images/map-logo.png',
                    height: 200,
                    width: 200,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                Text(
                  'จุดส่งสินค้า',
                  style: GoogleFonts.bebasNeue(
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //emai textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                      ),
                      child: TextField(
                        style: const TextStyle(
                          color: Colors.black, // Set the text color to black
                        ),
                        cursorColor: Colors.deepPurple,
                        controller: nameDeliveryController,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'ชื่อผู้ส่ง',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //password textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                      ),
                      child: TextField(
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                        cursorColor: Colors.deepPurple,
                        controller: detailDeliveryController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'ที่อยู่',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //password textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                      ),
                      child: TextField(
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                        cursorColor: Colors.deepPurple,
                        controller: telDeliveryController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'เบอร์ติดต่อ',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 10,
                ),
                Text(
                  'จุดรับสินค้า',
                  style: GoogleFonts.bebasNeue(
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //password textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                      ),
                      child: TextField(
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                        cursorColor: Colors.deepPurple,
                        controller: namePickupController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'ชื่อผู้รับ',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //password textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                      ),
                      child: TextField(
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                        cursorColor: Colors.deepPurple,
                        controller: detailPickupController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'ที่อยู่',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //password textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                      ),
                      child: TextField(
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                        cursorColor: Colors.deepPurple,
                        controller: telPickupController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'เบอร์ติดต่อ',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 10,
                ),
                Text(
                  'เวลารับสินค้า',
                  style: GoogleFonts.bebasNeue(
                    fontSize: 20,
                  ),
                ),

                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      // labelText: 'เวลารับสินค้า',
                      labelStyle: TextStyle(color: Color(0xFFEF6262)),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFEF6262), width: 2.0),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFE4E4E4), width: 2.0),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 2.0),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 2.0),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    value: _selectedOption,
                    items: _options.map<DropdownMenuItem<String>>(
                      (Map<String, dynamic> item) {
                        return DropdownMenuItem<String>(
                          value: item['value'],
                          child: Text(
                            item['label'],
                            style: TextStyle(color: Color(0xFF333333)),
                          ),
                        );
                      },
                    ).toList(),
                    onChanged: (value) {
                      setState(() {
                        _selectedOption = value;
                      });

                      if (_selectedOption == 'now') {
                        print('เลือกทันที');
                        print(_selectedOption);
                      } else if (_selectedOption == 'after') {
                        print('เลือกภายหลัง');
                        print(_selectedOption);
                        _showPopupPickupDatetime(context);
                      }
                    },
                    validator: (value) {
                      if (value == null) {
                        return 'กรุณาเลือก';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //sign in button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: InkWell(
                    onTap: () {
                      _showPopup(context);
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Color(0xFFEF6262),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          'ต่อไป',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'แจ้งเตือน',
            style: GoogleFonts.bebasNeue(
              fontSize: 20,
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'คุณแน่ใจหรือว่าจะยืนยัน ?',
                style: GoogleFonts.bebasNeue(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      closePopup(context);
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xFFEF6262),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          'ยกเลิก',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20), // ระยะห่างระหว่างปุ่ม
                  InkWell(
                    onTap: () {
                      submitData();
                      closePopup(context);
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xFF7CB342), // เปลี่ยนสีเป็นสีเสา
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          'ยืนยัน',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  void closePopup(BuildContext context) {
    Navigator.of(context).pop();
  }

  void _showPopupPickupDatetime(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'วันเวลารับสินค้า',
            style: GoogleFonts.bebasNeue(
              fontSize: 20,
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              //content

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                    ),
                    child: TextField(
                      enabled: false,
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      cursorColor: Colors.deepPurple,
                      controller: dateController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'วัน',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10),

              ElevatedButton(
                onPressed: () => _selectDate(context),
                child: Text('เลือกวันที่'),
              ),
              SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                    ),
                    child: TextField(
                      enabled: false,
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      cursorColor: Colors.deepPurple,
                      controller: timeController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'เวลา',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10),

              ElevatedButton(
                onPressed: () => _selectTime(context),
                child: Text('เลือกเวลา'),
              ),

              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      closePopup(context);
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xFFEF6262),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          'ยกเลิก',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20), // ระยะห่างระหว่างปุ่ม
                  InkWell(
                    onTap: () {
                      confirmDatetime();
                      closePopup(context);
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xFF7CB342), // เปลี่ยนสีเป็นสีเสา
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          'ยืนยัน',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  // เลือกวันที่
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2021),
      lastDate: DateTime(2025),
    );
    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
        dateController.text = pickedDate.toString().split(' ')[0];

        // Parse the string into a DateTime object
        DateTime formattedDate = DateTime.parse(dateController.text);
        String datenew = DateFormat('yyyy-MM-dd').format(formattedDate);
        dateController.text = datenew;
        print(dateController.text);
      });
    }
  }

// เลือกเวลา
  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );
    if (pickedTime != null && pickedTime != _selectedTime) {
      setState(() {
        _selectedTime = pickedTime;
        timeController.text = _selectedTime.format(context).toString();
      });
      print(timeController.text);
    }
  }

  void confirmDatetime() {}

  void submitData() {
    print(body);
  }

  Map get body {
    //Get the data from form
    final nameDelivery = nameDeliveryController.text;
    final detailDelivery = detailDeliveryController.text;
    final telDelivery = telDeliveryController.text;

    final namePickup = namePickupController.text;
    final detailPickup = detailPickupController.text;
    final telPickup = telPickupController.text;

    final dateTime = '2023-08-06T03:00:00.000Z';
    final body = {
      "userId": "64cb4890a6e27c614c60ebc4",
      "type_id": widget.typeId,
      "datetime": dateTime,
      "lat_delivery": "",
      "long_delivery": "",
      "name_delivery": nameDelivery,
      "detail_delivery": detailDelivery,
      "tel_delivery": telDelivery,
      "lat_pickup": "",
      "long_pickup": "",
      "name_pickup": namePickup,
      "detail_pickup": detailPickup,
      "tel_pickup": telPickup,
    };
    return body;
  }
}
