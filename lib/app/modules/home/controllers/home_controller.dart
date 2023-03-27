import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/modules/about_me/views/about_me_view.dart';
import 'package:portfolio/app/modules/portfolio/views/portfolio_view.dart';

class HomeController extends GetxController {
  var pageController = PageController().obs;
  var child = [const PortfolioView(),const AboutMeView()];
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void changeIndex(int index){
    pageController.value.jumpToPage(index);
    update();
    Get.back();
  }

}
