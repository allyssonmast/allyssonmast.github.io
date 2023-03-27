import 'package:get/get.dart';
import 'package:portfolio/app/data/model/projects.dart';
import 'package:portfolio/app/utils/constants.dart';

var androidProjects = Project(
  title: 'native_android',
  projectName: 'kotlin_applications'.tr,
  url: '',
  descrition:
      'dasdasd adasda sd asda adnadasdasd aasdasdasda adasda sdasd asudhfluhf ohowiuhfoiguhoiugosdfsdf iuhidfs  ',
  subTitle: 'access_my_kotlin',
  details: [
    'Cryptocurrency',
    'Dictionary',
    'GoogleMaps with Jetpack',
    'Restaurant Management',
  ],
  projectArc: {
    'Android Projects': '',
    'Flutter Projects': '',
  },
);

var noButecoProject = Project(
  title: 'noButeco - Startup by Flutter',
  projectName: 'noButeco App',
  url: 'asset/logo_erp.png',
  descrition:
      'nobute_description',
  subTitle: 'nobute_sub',
  details: [
    'Delivery',
    'In person Orderns',
    'Event Schedule',
    'Menu by QrCode',
    'Sales control',
  ],
  projectArc: {
    'aplications': [nobuteco, nobutecoErp, nobutecoBand],
    'problema': 'problems_project',
    'proposta': 'proposta_text',
    'proximos_desafios': 'proximos_desafios_text',
  },
);