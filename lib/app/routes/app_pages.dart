import 'package:get/get.dart';

import '../modules/about_me/bindings/about_me_binding.dart';
import '../modules/about_me/views/about_me_view.dart';
import '../modules/app_datails/bindings/app_datails_binding.dart';
import '../modules/app_datails/views/app_datails_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/notfound/bindings/notfound_binding.dart';
import '../modules/notfound/views/notfound_view.dart';
import '../modules/portfolio/bindings/portfolio_binding.dart';
import '../modules/portfolio/views/portfolio_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;
  static const unknownRoute = Routes.NOTFOUND;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.NOTFOUND,
      page: () => const NotfoundView(),
      binding: NotfoundBinding(),
    ),
    GetPage(
      name: _Paths.APP_DATAILS,
      page: () => const AppDatailsView(),
      binding: AppDatailsBinding(),
    ),
    GetPage(
      name: _Paths.PORTFOLIO,
      page: () => const PortfolioView(),
      binding: PortfolioBinding(),
    ),
    GetPage(
      name: _Paths.ABOUT_ME,
      page: () => const AboutMeView(),
      binding: AboutMeBinding(),
    ),
  ];
}
