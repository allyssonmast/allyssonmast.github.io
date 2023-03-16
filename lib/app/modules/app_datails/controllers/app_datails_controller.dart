import 'package:get/get.dart';
import 'package:page/app/data/model/nobuteco.dart';
import 'package:page/app/utils/constants.dart';

class AppDatailsController extends GetxController {
  late Nobuteco app;
  RxBool loading = true.obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    _featch();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  _featch() {
    String name = Get.parameters['app'] ?? 'noButeco App';
    switch (name) {
      case 'noButeco App':
        app = nobuteco;
        break;

      case 'noButeco ERP':
        app = nobutecoErp;
        break;

      case 'noButeco Band':
        app = nobutecoBand;
        break;
    }
    loading.value = false;
    update();
  }
}
