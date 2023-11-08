import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:ostad_flutter_project/flutter_module/module_11(CRUD_Application_Rest_API_Tutorial)/Style/style.dart';

Future<List> productGridViewListRequest() async {
  var URL = Uri.parse("https://crud.teamrabbil.com/api/v1/ReadProduct");
  var postHeader = {"Content-Type": "application/json"};
  var response = await http.get(URL, headers: postHeader);
  var resultCode = response.statusCode;
  var resultBody = json.decode(response.body);

  if (resultCode == 200 && resultBody["status"] == "success") {
    successToast("Request Success");
    return resultBody["data"];
  } else {
    errorToast("Request failed! try again");
    return [];
  }
}

Future<bool> productCreateRequest(formValues) async {
  var URL = Uri.parse("https://crud.teamrabbil.com/api/v1/CreateProduct");
  var postBody = json.encode(formValues);
  var postHeader = {"Content-Type": "application/json"};

  var response = await http.post(URL, headers: postHeader, body: postBody);

  var resultCode = response.statusCode;
  var resultBody = json.decode(response.body);

  if (resultCode == 200 && resultBody["status"] == "success") {
    successToast("Request Success");
    return true;
  } else {
    errorToast("Request failed! try again");
    return false;
  }
}

Future<bool> productDeleteRequest(id) async {
  var URL = Uri.parse("https://crud.teamrabbil.com/api/v1/DeleteProduct/" + id);
  var postHeader = {"Content-Type": "application/json"};
  var response = await http.get(URL, headers: postHeader);

  var resultCode = response.statusCode;
  var resultBody = json.decode(response.body);
  if (resultCode == 200 && resultBody["status"] == "success") {
    successToast("Request Success");
    return true;
  } else {
    errorToast("Request failed! try again");
    return false;
  }
}

Future<bool> productUpdateRequest(formValues, id) async {
  var URL = Uri.parse("https://crud.teamrabbil.com/api/v1/UpdateProduct/" + id);
  var postBody = json.encode(formValues);
  var postHeader = {"Content-Type": "application/json"};

  var response = await http.post(URL, headers: postHeader, body: postBody);

  var resultCode = response.statusCode;
  var resultBody = json.decode(response.body);

  if (resultCode == 200 && resultBody["status"] == "success") {
    successToast("Request Success");
    return true;
  } else {
    errorToast("Request failed! try again");
    return false;
  }
}
