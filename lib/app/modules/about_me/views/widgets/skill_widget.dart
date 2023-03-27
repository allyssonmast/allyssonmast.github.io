import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/app/data/model/skill.dart';

class SkillWidget extends StatelessWidget {
  final GlobalKey globalKey;
  final Skill skill;
  const SkillWidget({Key? key, required this.globalKey, required this.skill})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(8.0.sp),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.all(10.0.sp),
              child: Text(
                skill.title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Wrap(
              spacing: 25.sp,
              runSpacing: 16.sp,
              children: skill.icons,
            ),
            ListView.builder(
                padding: EdgeInsets.only(top: 16.sp),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: skill.descriptions.length,
                itemBuilder: (_, index) {
                  String description = skill.descriptions[index];
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 4.0.sp),
                    child: Row(
                      children: [
                        const Icon(Icons.bolt_outlined),
                        SizedBox(
                          width: 8.sp,
                        ),
                        Expanded(
                          child: Text(
                            description,
                            style: TextStyle(fontSize: 14.sp),
                          ),
                        )
                      ],
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
