import 'package:get/get.dart';

import '../controllers/app_datails_controller.dart';

class AppDatailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppDatailsController>(
      () => AppDatailsController(),
    );
  }
}
