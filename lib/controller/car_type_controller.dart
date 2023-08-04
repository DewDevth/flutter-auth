import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../services/auth_service.dart';

class CarTypeController extends GetxController {
  getCarType() async {
    //submit data to the server

    //validate success
    final isSuccess = await ApiService.getCarTypeList();
    //show success or fail message based on status
    if (isSuccess!.isNotEmpty) {
      print(isSuccess);
    } else {
      print('error');
    }
  }
}
