import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:page/app/data/model/nobuteco.dart';
import 'package:page/app/routes/app_pages.dart';

class AppsWidget extends StatelessWidget {
  final Nobuteco nobuteco;
  const AppsWidget({Key? key, required this.nobuteco}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 18.sp),
      child: InkWell(
        onTap: () => Get.toNamed(Routes.APP_DATAILS, parameters: {'app':nobuteco.name}),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8.0.sp),
              child:  CircleAvatar(
                backgroundImage: AssetImage(nobuteco.logo),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 8.0.sp, left: 8.sp),
                    child: Text(
                      nobuteco.name,
                      style: TextStyle(
                        fontSize: 20.0.sp,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.0.sp, left: 8.sp),
                    child: Text(
                      nobuteco.subtTitle,
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
      ),
    );
  }
}
