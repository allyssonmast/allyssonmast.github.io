import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LanguageWidget extends StatelessWidget {
  final GlobalKey listKey;
  const LanguageWidget({Key? key, required this.listKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(16.0.sp),
          child: Text(
            'language'.tr,
            key: listKey,
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17.sp),
          ),
        ),
        const ProgressIndicatorDemo(
          nivel: 'Advanced',
          value: 0.9,
          lingua: 'English',
        ),
        const ProgressIndicatorDemo(
          nivel: 'Nativo',
          value: 1.0,
          lingua: 'Português',
        ),
        const ProgressIndicatorDemo(
          nivel: 'B1 certified by TELC LanguageTests',
          value: 0.5,
          lingua: 'Deutsch',
        ),
      ],
    );
  }
}

class ProgressIndicatorDemo extends StatelessWidget {
  final String nivel;
  final String lingua;
  final double value;
  const ProgressIndicatorDemo(
      {super.key,
        required this.nivel,
        required this.value,
        required this.lingua});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.sp,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(lingua,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14.sp),),
          Center(
              child: Stack(children: <Widget>[
                LinearProgressIndicator(
                  value: value,
                ),
                Align(
                  alignment: AlignmentGeometry.lerp(
                      Alignment.topLeft, Alignment.topRight, value)!,
                  child: Padding(
                    padding: EdgeInsets.only(top: 8.0.sp),
                    child: Text(nivel),
                  ),
                ),
              ])),
        ],
      ),
    );
  }
}
