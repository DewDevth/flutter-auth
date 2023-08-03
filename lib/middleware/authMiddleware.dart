import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  Future<GetNavConfig?> redirectDelegate(GetNavConfig route) async {
    // ตรวจสอบว่ามี Token อยู่หรือไม่
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');

    if (token == null) {
      // ถ้าไม่มี Token ให้เปลี่ยนเส้นทางไปยังหน้า Login
      return GetNavConfig.fromRoute('/login');
    } else {
      // ถ้ามี Token ให้อนุญาตให้เข้าถึงหน้าต่างปัจจุบัน
      return route;
    }
  }
}
