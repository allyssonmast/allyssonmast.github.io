import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page/app/modules/home/controllers/home_controller.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  bool dark = Get.isDarkMode;
  int grup = 0;
  var controller = Get.put(HomeController());
  String language = 'English';

  @override
  void initState() {
    super.initState();
    _oninit();
  }

  _oninit() {
    var locale = Get.locale ?? Get.deviceLocale;

    switch (locale.toString()) {
      case 'pt_BR':
        grup = 2;
        language = 'Português';
        break;

      case 'de_DE':
        grup = 1;
        language = 'Deutsch';
        break;

      default:
        grup = 0;
        language = 'English';
    }
  }

  _changeLocale(int? onchange) {
    late Locale locale;
    switch (onchange) {
      case 1:
        locale = const Locale('de_DE');
        break;
      case 2:
        locale = const Locale('pt_BR');
        break;

      default:
        locale = const Locale('en_US');
    }

    grup = onchange!;
    Get.updateLocale(locale);
    _oninit();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var drawer = [
      {
        'title': 'Portifolio',
        'icon': Icons.sports_bar_outlined,
      },
      {
        'title': 'about_me'.tr,
        'icon': Icons.person_2_rounded,
      },
    ];

    return Drawer(
      child: Column(
        children: [
          ListView.builder(
              itemCount: drawer.length,
              shrinkWrap: true,
              itemBuilder: (_, index) {
                var list = drawer[index];
                return ListTile(
                  onTap: () {
                    controller.changeIndex(index);
                  },
                  title: Text(list['title'] as String),
                  leading: CircleAvatar(child: Icon(list['icon'] as IconData)),
                );
              }),
          const Spacer(),
          ExpansionTile(
            title: Text('language'.tr),
            subtitle: Text(language),
            leading: const CircleAvatar(
              child: Icon(Icons.language_outlined),
            ),
            children: [
              RadioListTile(
                title: const Text('English'),
                value: 0,
                groupValue: grup,
                onChanged: _changeLocale,
              ),
              RadioListTile(
                title: const Text('Deutsch'),
                value: 1,
                groupValue: grup,
                onChanged: _changeLocale,
              ),
              RadioListTile(
                title: const Text('Português'),
                value: 2,
                groupValue: grup,
                onChanged: _changeLocale,
              ),
            ],
          ),
          SafeArea(
            top: false,
            child: SwitchListTile(
              value: dark,
              secondary: const CircleAvatar(child: Icon(Icons.dark_mode)),
              title: Text('dark_mode'.tr),
              onChanged: (onChanged) {
                var themeMode = onChanged ? ThemeMode.dark : ThemeMode.light;

                dark = onChanged;

                Get.changeThemeMode(themeMode);

                setState(() {});
              },
            ),
          )
        ],
      ),
    );
  }
}
