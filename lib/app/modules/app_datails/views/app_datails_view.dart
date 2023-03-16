import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/app_datails_controller.dart';

class AppDatailsView extends GetView<AppDatailsController> {
  const AppDatailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppDatailsController>(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text(controller.app.name),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.sp),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  controller.app.description,
                  style: TextStyle(fontSize: 15.sp),
                ),
                SizedBox(
                  height: 16.sp,
                ),
                Text(
                  'Atividades',
                  style:
                      TextStyle(fontWeight: FontWeight.w900, fontSize: 18.sp),
                ),
                SizedBox(
                  height: 10.sp,
                ),
                ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: controller.app.instructions.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (_, index) {
                      var text = controller.app.instructions[index];
                      return ListTile(
                        horizontalTitleGap: 0,
                        leading: const Icon(Icons.check_circle_outline),
                        title: Text('$text,'),
                      );
                    }),
                Card(
                  child: InkWell(
                    onTap: () {},
                    child: const Image(
                      image: AssetImage('asset/googleplay_appstore.png'),
                    ),
                  ),
                ),
                Card(
                    clipBehavior: Clip.antiAlias,
                    child: Image(image: AssetImage(controller.app.asset)))
              ],
            ),
          ),
        ),
      );
    });
  }
}
