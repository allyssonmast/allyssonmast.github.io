import 'package:get/get.dart';
import 'package:page/app/data/model/projects.dart';
import 'package:page/app/utils/constants.dart';

var androidProjects = Project(
  title: 'native_android',
  projectName: 'kotlin_applications'.tr,
  url: '',
  descrition:
      'dasdasd adasda sd asda adnadasdasd aasdasdasda adasda sdasd asudhfluhf ohowiuhfoiguhoiugosdfsdf iuhidfs  ',
  subTitle: 'access_my_kotlin',
  details: [
    'primeiro projeto',
    'Segundo projeto',
    'Terceiro projeto',
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
      'dasdasd adasda sd asda adnadasdasd aasdasdasda adasda sdasd asudhfluhf ohowiuhfoiguhoiugosdfsdf iuhidfs  ',
  subTitle: 'Gerenciamento de Bares e restaurantes',
  details: [
    'Delivery',
    'In person Orderns',
    'Tericeiro motivo',
    '4 motivo',
  ],
  projectArc: {
    'Aplicativos': [nobuteco, nobutecoErp, nobutecoBand],
    'Problema': '',
    'Proposta': '',
    'Recursos': '',
    'Próximos desafios': '',
    'Rentabilidade': '',
  },
);
