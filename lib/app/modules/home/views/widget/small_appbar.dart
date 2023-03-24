import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:page/app/modules/home/controllers/home_controller.dart';

class SmallAppBar extends StatefulWidget with PreferredSizeWidget {
  const SmallAppBar({Key? key}) : super(key: key);

  @override
  State<SmallAppBar> createState() => _SmallAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(80.sp);
}

class _SmallAppBarState extends State<SmallAppBar> {
  var controller = Get.put(HomeController());

  bool showBottom = false;

  List<IconData> icons = [
    Icons.sports_bar_outlined,
    Icons.person,
    Icons.language_outlined,
    Icons.dark_mode,
  ];

  changeDark(int index) {
    showBottom = false;
    switch (index) {
      case 0:
        controller.changeIndex(index);
        break;
      case 1:
        controller.changeIndex(index);
        break;
      case 2:
        _showPopupMenu();
        break;
      case 3:
        var theme = Get.isDarkMode ? ThemeMode.light : ThemeMode.dark;
        Get.changeThemeMode(theme);
        break;
    }
    setState(() {});
  }

  void _showPopupMenu() {
    final RenderBox button = context.findRenderObject() as RenderBox;
    final RenderBox overlay =
        Overlay.of(context).context.findRenderObject() as RenderBox;

    final RelativeRect position = RelativeRect.fromRect(
      Rect.fromPoints(
        button.localToGlobal(
          Offset.zero,
          ancestor: overlay,
        ),
        button.localToGlobal(
          button.size.bottomRight(Offset.zero),
          ancestor: overlay,
        ),
      ),
      Offset.zero & overlay.size,
    );
    showMenu<String>(
      context: context,
      position: position,
      items: const [
        PopupMenuItem(value: 'en_US', child: Text('English')),
        PopupMenuItem(value: 'de_DE', child: Text('Deutsch')),
        PopupMenuItem(value: 'pt_BR', child: Text('Português')),
      ],
    ).then((value) {
      if (value != null) {
        Locale locale = Locale(value);
        Get.updateLocale(locale);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> labels = [
      'Portifolio',
      'about_me'.tr,
      'language'.tr,
      'dark_mode'.tr,
    ];

    return AppBar(
      toolbarHeight: 80.sp,
      centerTitle: false,
      title: context.isPhone
          ? Text(
              'Allysson Freitas Portfólio',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0.sp,
              ),
            )
          : null,
      actions: [
        if (context.isTablet && !context.isLargeTablet)
          ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: icons.length,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (_, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: CircleAvatar(
                  child: IconButton(
                    onPressed: () {
                      changeDark(index);
                    },
                    icon: Icon(icons[index]),
                  ),
                ),
              );
            },
          )
        else if (context.isLargeTablet)
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: icons.length,
            itemBuilder: (_, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: TextButton.icon(
                  onPressed: () {
                    changeDark(index);
                  },
                  icon: Icon(icons[index]),
                  label: Text(labels[index]),
                ),
              );
            },
          ),
        if (context.isPhone)
          Padding(
            padding: EdgeInsets.only(right: 8.0.sp, top: 8.sp),
            child: CircleAvatar(
              radius: 35.sp,
              backgroundImage: const AssetImage('asset/me.jpeg'),
            ),
          ),
      ],
    );
  }
}
