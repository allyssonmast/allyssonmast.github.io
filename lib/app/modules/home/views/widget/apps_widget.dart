import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:page/app/data/model/projects.dart';

class AppsWidget extends StatelessWidget {
  final Project nobuteco;
  const AppsWidget({Key? key, required this.nobuteco}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 18.sp),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.0.sp),
            child: CircleAvatar(
                backgroundImage:
                    nobuteco.url != '' ? AssetImage(nobuteco.url) : null,
                child: nobuteco.url == ''
                    ? const FaIcon(FontAwesomeIcons.github)
                    : null),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 8.0.sp, left: 8.sp),
                  child: Text(
                    nobuteco.projectName,
                    style: TextStyle(
                      fontSize: 20.0.sp,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8.0.sp, left: 8.sp),
                  child: Text(
                    nobuteco.subTitle.tr,
                    style: TextStyle(
                      fontSize: 12.0.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
