import 'package:get/get.dart';
import 'package:page/app/data/model/projects.dart';
import 'package:page/app/utils/project_constants.dart';

class ProjectController extends GetxController {
  late Project? project;
  RxInt indexTab = 0.obs;
  @override
  void onInit() {
    super.onInit();
    _feachtProject();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  var map = {
    'Kotlin Applications': androidProjects,
    'noButeco App': noButecoProject
  };

  _feachtProject() {
    project = noButecoProject;
  }
}
