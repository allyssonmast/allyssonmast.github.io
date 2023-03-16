import 'package:flutter/material.dart';
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
            constraints: const BoxConstraints(maxWidth: 1000),
            child: Scaffold(
              drawer: context.isPhone ? const DrawerWidget() : null,
              appBar: const SmallAppBar(),
              body: Center(
                child: Container(
                  constraints: const BoxConstraints(maxWidth: 1000),
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
