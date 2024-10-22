import 'package:get/get.dart';
import 'package:kelime_hatirlatma_project/view/screen/homeScreens/home.dart';

class AppRoutes {
  //static const String splash = '/';
  static const String homepage = '/';

  static List<GetPage> getPages() {
    return [
      // GetPage(name: splash, page: () => const SplashScreen()),
      GetPage(name: homepage, page: () => const Home()),
    ];
  }
}
