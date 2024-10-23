import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kelime_hatirlatma_project/core/api/initialBindings.dart';
import 'package:kelime_hatirlatma_project/core/utils/apptheme.dart';
import 'package:kelime_hatirlatma_project/routes.dart';
//import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

/*
void main() => runApp(
      DevicePreview(
        builder: (context) => MyApp(), // Wrap your app
      ),
    );
*/
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // LocaleController controller = Get.put(LocaleController());
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: (_, child) {
          return GetMaterialApp(
            initialBinding: InitialBindings(),
            //builder: DevicePreview.appBuilder,
            debugShowCheckedModeBanner: false,
            title: 'flutter demo',
            theme: AppTheme.theme,
            //home: const SplashScreen(),
            //routes: routes,
            //initialRoute: "/",
            getPages: AppRoutes.getPages(),
          );
        });
  }
}
