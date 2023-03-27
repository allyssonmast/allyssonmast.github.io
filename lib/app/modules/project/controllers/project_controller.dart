import 'package:get/get.dart';
import 'package:portfolio/app/data/model/projects.dart';
import 'package:portfolio/app/utils/project_constants.dart';

class ProjectController extends GetxController {
  Project project = noButecoProject;
  RxInt indexTab = 0.obs;
}
