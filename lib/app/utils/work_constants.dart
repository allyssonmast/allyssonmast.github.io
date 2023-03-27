import 'package:portfolio/app/data/model/about.dart';

var siemensWork = AboutMe(
    url: 'asset/siemens.png',
    title: 'Project Manager Intern',
    subTitle:'SIEMENS',
    description: 'Project management using agile scrum methodology',
    startDate: DateTime(2018, 03),
    finalDate: DateTime(2019,06));

var bakerWork = AboutMe(
    url: 'asset/baker.jpg',
    title: 'Field Engineer Trainee ',
    subTitle:'Baker Hughes',
    description: 'Wireline Services Oil & Gas',
    startDate: DateTime(2019, 07),
    finalDate: DateTime(2019,12));

var nobutecoWork = AboutMe(
    url: 'asset/logo_erp.png',
    title: 'Founder & Software Developer',
    subTitle:'noButeco App',
    description: 'Bars and restaurants management',
    startDate: DateTime(2021, 01),
    finalDate: DateTime.now());
