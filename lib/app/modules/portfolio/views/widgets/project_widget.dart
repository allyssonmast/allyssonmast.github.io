import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:page/app/data/model/projects.dart';
import 'package:page/app/modules/home/views/widget/apps_widget.dart';
import 'package:page/app/routes/app_pages.dart';

class ProjectWidget extends StatelessWidget {
  final Project project;
  const ProjectWidget({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 90.sp, left: 8.sp, right: 8.sp),
      child: InkWell(
        onTap: () => Get.toNamed(
            project.projectName != 'kotlin_applications'.tr
                ? Routes.PROJECT
                : Routes.GIT_REPOSITORIES,
            parameters: {'id': project.projectName.tr}),
        child: Container(
          padding: EdgeInsets.all(8.sp),
          constraints: BoxConstraints(maxWidth: 400.sp),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 8.0.sp, left: 8.sp),
                child: Text(
                  project.title.tr.toUpperCase(),
                  style: TextStyle(
                    fontSize: 15.0.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              AppsWidget(nobuteco: project),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: project.details.length,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: EdgeInsets.all(4.0.sp),
                    child: Row(
                      children: [
                        const Icon(Icons.check_circle_outline),
                        SizedBox(
                          width: 4.sp,
                        ),
                        Text(project.details[index])
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
