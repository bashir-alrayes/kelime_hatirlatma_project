import 'package:kelime_hatirlatma_project/core/api/crud.dart';
import 'package:kelime_hatirlatma_project/core/api/linkapi.dart';

class DeviceToken {
  Crud crud;
  DeviceToken(this.crud);
  postdata(String token) async {
    var response =
        await crud.postData(AppLink.deviceToken(token), {"token": token});
    return response.fold((l) => l, (r) => r);
  }
}
