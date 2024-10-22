import 'package:kelime_hatirlatma_project/core/api/crud.dart';
import 'package:kelime_hatirlatma_project/core/api/linkapi.dart';

class TestData {
  Crud crud;
  TestData(this.crud);
  postdata(String transaction_ID, String LastName) async {
    var response = await crud.postData(AppLink.transcation,
        {"transaction_ID": transaction_ID, "LastName": LastName});
    return response.fold((l) => l, (r) => r);
  }
}
