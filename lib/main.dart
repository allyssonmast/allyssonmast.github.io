import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:page/app/modules/notfound/views/notfound_view.dart';
import 'package:page/app/utils/theme.dart';
import 'package:url_strategy/url_strategy.dart';

import 'app/modules/home/views/home_view.dart';
import 'app/modules/notfound/bindings/notfound_binding.dart';
import 'app/routes/app_pages.dart';
import 'app/utils/translation.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          title: 'Allysson portifolio',
          getPages: AppPages.routes,
          translations: TranslationService(),
          locale: TranslationService.locale,
          scrollBehavior: const MaterialScrollBehavior().copyWith(
            dragDevices: {
              PointerDeviceKind.mouse,
              PointerDeviceKind.touch,
              PointerDeviceKind.stylus,
              PointerDeviceKind.unknown
            },
          ),
          fallbackLocale: TranslationService.fallbackLocale,
          supportedLocales: const [
            TranslationService.locale,
            TranslationService.fallbackLocale,
            Locale('de', 'DE'),
          ],
          unknownRoute: GetPage(
            name: AppPages.unknownRoute,
            page: () => const NotfoundView(),
            binding: NotfoundBinding(),
          ),
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.system,
          theme: lightTheme,
          darkTheme: darkTheme,
          home: child,
        );
      },
      child: const HomeView(),
    );
  }
}
