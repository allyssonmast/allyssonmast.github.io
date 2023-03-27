import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/modules/about_me/views/widgets/skill_widget.dart';
import 'package:portfolio/app/utils/skill_constant.dart';

class Skills extends StatelessWidget {
  final GlobalKey globalKey;
  const Skills({Key? key, required this.globalKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var list = [
      fullStackSkill,
      devSkill,
      desingSkill,
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          key: globalKey,
          padding: EdgeInsets.only(top: 16.sp, left: 16.sp),
          child: Text(
            'skill'.tr,
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17.sp),
          ),
        ),
        GridView.builder(
          itemCount: list.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 8.sp),
          itemBuilder: (_, index) {
            return SkillWidget(
              skill: list[index],
              globalKey: globalKey,
            );
          },
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 600.sp,
              mainAxisExtent: 320.sp,
              childAspectRatio: 1.sp,
              crossAxisSpacing: 4.sp,
              mainAxisSpacing: 4.sp),
        )
      ],
    );
  }
}
