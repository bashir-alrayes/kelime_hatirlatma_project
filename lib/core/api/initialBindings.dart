import 'package:get/get.dart';
import 'package:kelime_hatirlatma_project/core/api/crud.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    // Start
    Get.put(Crud());
  }
}
