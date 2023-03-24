import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:page/app/modules/about_me/views/widgets/about_universities_widget.dart';
import 'package:page/app/utils/about_constants.dart';
import 'package:page/app/utils/work_constants.dart';

import '../controllers/about_me_controller.dart';
import 'widgets/language_widget.dart';
import 'widgets/skills.dart';

class AboutMeView extends GetView<AboutMeController> {
  const AboutMeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final List<Tab> myTabs = [
      Tab(text: 'about_me'.tr),
      Tab(text: 'work'.tr),
      Tab(text: 'education'.tr),
      Tab(text: 'skill'.tr),
      Tab(text: 'language'.tr),
    ];

    List<GlobalKey> listKey = [
      GlobalKey(),
      GlobalKey(),
      GlobalKey(),
      GlobalKey(),
      GlobalKey(),
    ];

    List listEducation = [
      computacaoAbout,
      ilmenauAbout,
      mecanicaAbout,
      cetAbout,
    ];

    List listWork = [
      nobutecoWork,
      siemensWork,
      bakerWork,
    ];

    scrollTo(int index) async {
      final context = listKey[index].currentContext!;

      await Scrollable.ensureVisible(context,
          duration: const Duration(seconds: 1));
    }

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 0,
          title: TabBar(
            tabs: myTabs,
            isScrollable: true,
            onTap: scrollTo,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MeAboutMe(globalKey: listKey[0]),
              EducationWorkAboutMe(
                title: 'work'.tr,
                globalKey: listKey[1],
                list: listWork,
              ),
              SizedBox(
                height: 8.sp,
              ),
              EducationWorkAboutMe(
                  globalKey: listKey[2],
                  title: 'education'.tr,
                  list: listEducation),
              Skills(globalKey: listKey[3]),
              LanguageWidget(listKey: listKey[4]),
              SizedBox(height: 25.sp),
            ],
          ),
        ),
      ),
    );
  }
}

class MeAboutMe extends StatelessWidget {
  final GlobalKey globalKey;
  const MeAboutMe({Key? key, required this.globalKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.sp),
      key: globalKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'hi_all'.tr,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          SizedBox(
            height: 8.sp,
          ),
          Text(
            'about_me_text'.tr,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ],
      ),
    );
  }
}

class EducationWorkAboutMe extends StatelessWidget {
  final String title;
  final List list;
  final GlobalKey globalKey;
  const EducationWorkAboutMe(
      {Key? key,
      required this.globalKey,
      required this.title,
      required this.list})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          key: globalKey,
          padding: EdgeInsets.all(16.sp),
          child: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17.sp),
          ),
        ),
        GridView.builder(
          itemCount: list.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 8.sp),
          itemBuilder: (_, index) {
            return AboutUniversityWidget(
              evento: list[index],
            );
          },
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 407.sp,
              mainAxisExtent: 320.sp,
              childAspectRatio: 1.sp,
              crossAxisSpacing: 4.sp,
              mainAxisSpacing: 4.sp),
        ),
      ],
    );
  }
}
