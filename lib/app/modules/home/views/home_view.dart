import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:page/app/modules/home/controllers/home_controller.dart';
import 'package:page/app/modules/home/views/widget/drawer_widget.dart';
import 'package:page/app/modules/home/views/widget/small_appbar.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (device) {
          return Container(
            color: Colors.red,
            constraints: BoxConstraints(maxWidth: 1200.sp),
            child: Scaffold(
              drawer: context.isPhone ? const DrawerWidget() : null,
              appBar: const SmallAppBar(),
              body: Center(
                child: Container(
                  constraints: BoxConstraints(maxWidth: 1200.sp),
                  child: PageView(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: controller.pageController.value,
                    children: controller.child,
                  ),
                ),
              ),
            ),
          );
        });
  }
}
