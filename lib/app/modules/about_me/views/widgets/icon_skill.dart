import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SkillIcon extends StatelessWidget {
  final IconData iconData;
  final Color? color;
  const SkillIcon({Key? key, required this.iconData, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double sizeIcon = 50.sp;
    return Icon(
      iconData,
      size: sizeIcon,
      color: color,
    );
  }
}
