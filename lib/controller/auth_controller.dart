import 'package:frontend/navbar/navbar.dart';
import 'package:frontend/pages/home.dart';
import 'package:frontend/services/auth_service.dart';
import 'package:frontend/utils/snackbar_helper.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../routes/routes.dart';
import '../screens/pages/home_page.dart';
import '../screens/pages/login_page.dart';

class AuthController extends GetxController {
  login(bool isInputValid, context, body) async {
    //submit data to the server
    if (!isInputValid) {
      showErrorMessage(context, message: "Please fill in all fields.");
    } else {
      //validate success
      final isSuccess = await AuthService.loginUser(body);
      //show success or fail message based on status
      if (isSuccess.isNotEmpty) {
        showSuccessMessage(context, message: "Login Successfully");

        // print(isSuccess);

        // Get.to(
        //   () => HomePage(),
        // );
        Get.to(
          // Get.toNamed('/navbar'),
          () => Navbar(),
        );
      } else {
        showErrorMessage(context, message: "Login Failed");
      }
    }
  }

  register(bool isInputValid, bool passwordsMatch, context, body) async {
//submit data to the server
    if (!isInputValid) {
      showErrorMessage(context, message: "Please fill in all fields.");
    } else if (!passwordsMatch) {
      showErrorMessage(context, message: "Passwords do not match.");
    } else {
      //validate success
      final isSuccess = await AuthService.registerUser(body);
      //show success or fail message based on status
      if (isSuccess) {
        // print(isSuccess);
        showSuccessMessage(context, message: "Registered Successfully");

        Get.to(
          () => LoginPage(),
        );
      } else {
        showErrorMessage(context, message: "Registered Failed");
      }
    }
  }

  Future<void> logout() async {
    // Clear data from SharedPreferences
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
    Get.to(
      () => LoginPage(),
    );
  }
}
