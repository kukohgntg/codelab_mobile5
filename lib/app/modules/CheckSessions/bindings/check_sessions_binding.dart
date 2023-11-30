import 'package:get/get.dart';

import '../controllers/check_sessions_controller.dart';

class CheckSessionsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CheckSessionsController>(
      () => CheckSessionsController(),
    );
  }
}
