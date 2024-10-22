import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:kelime_hatirlatma_project/core/api/checkinternet.dart';
import 'package:kelime_hatirlatma_project/core/api/linkapi.dart';
import 'package:kelime_hatirlatma_project/core/api/statusrequest.dart';

class Crud {
  Future<Either<StatusRequest, Map<String, dynamic>>> postData(
      String linkurl, Map data) async {
    if (await checkInternet()) {
      var response =
          await http.post(Uri.parse(linkurl), body: data, headers: myheaders);
      // print(response.statusCode);

      if (response.statusCode == 200 || response.statusCode == 201) {
        dynamic responsebody = jsonDecode(response.body);
        // print(responsebody);

        return Right(responsebody);
      } else {
        return const Left(StatusRequest.serverfailure);
      }
    } else {
      return const Left(StatusRequest.offlinefailure);
    }
  }

  Future<Either<StatusRequest, Map<String, dynamic>>> getData(
      String linkurl) async {
    if (await checkInternet()) {
      var response = await http.get(Uri.parse(linkurl), headers: myheaders);
      // print(response.statusCode);

      if (response.statusCode == 200 || response.statusCode == 201) {
        dynamic responsebody = jsonDecode(response.body);
        //print(responsebody);

        return Right(responsebody);
      } else {
        return const Left(StatusRequest.serverfailure);
      }
    } else {
      return const Left(StatusRequest.offlinefailure);
    }
  }
}

Map<String, String> myheaders = {
  'Authorization': 'Bearer ${AppLink().bearerToken}',
};
