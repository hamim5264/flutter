import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:ostad_flutter_project/flutter_module/module_12(TaskManager_Tutorial)/style/style.dart';
import 'package:ostad_flutter_project/flutter_module/module_12(TaskManager_Tutorial)/utility/utility.dart';

var baseURL = "https://task.teamrabbil.com/api/v1";
var requestHeader = {"Content-Type": "application/json"};

///Log in request api implement
Future<bool> loginRequest(formValues) async {
  var url = Uri.parse("$baseURL/login");
  var postBody = json.encode(formValues);
  var response = await http.post(url, headers: requestHeader, body: postBody);
  var resultCode = response.statusCode;
  var resultBody = json.decode(response.body);
  if (resultCode == 200 && resultBody['status'] == "success") {
    successToast("Request Success");
    await writeUserData(resultBody); //store user data
    return true;
  } else {
    errorToast("Request failed! try again");
    return false;
  }
}

///Registration request api implementation
Future<bool> registrationRequest(formValues) async {
  var url = Uri.parse("$baseURL/registration");
  var postBody = json.encode(formValues);
  var response = await http.post(url, headers: requestHeader, body: postBody);
  var resultCode = response.statusCode;
  var resultBody = json.decode(response.body);
  if (resultCode == 200 && resultBody['status'] == "success") {
    successToast("Request Success");
    return true;
  } else {
    errorToast("Request failed! try again");
    return false;
  }
}

///Recover verify email api implementation
Future<bool> verifyEmailRequest(email) async {
  var url = Uri.parse("$baseURL/RecoverVerifyEmail/$email");
  var response = await http.get(url, headers: requestHeader);
  var resultCode = response.statusCode;
  var resultBody = json.decode(response.body);
  if (resultCode == 200 && resultBody['status'] == "success") {
    await writeEmailVerification(email); //store user email
    successToast("Request Success");
    return true;
  } else {
    errorToast("Request failed! try again");
    return false;
  }
}

///Verify OTP request api implementation
Future<bool> verifyOTPRequest(email, otp) async {
  var url = Uri.parse("$baseURL/RecoverVerifyOTP/$email/$otp");
  var response = await http.get(url, headers: requestHeader);
  var resultCode = response.statusCode;
  var resultBody = json.decode(response.body);
  if (resultCode == 200 && resultBody['status'] == "success") {
    await writeOTPVerification(otp); //store user otp
    successToast("Request Success");
    return true;
  } else {
    errorToast("Request failed! try again");
    return false;
  }
}

///Set new password request api implementation
Future<bool> setPasswordRequest(formValues) async {
  var url = Uri.parse("$baseURL/RecoverResetPass");
  var postBody = json.encode(formValues);
  var response = await http.post(url, headers: requestHeader, body: postBody);
  var resultCode = response.statusCode;
  var resultBody = json.decode(response.body);
  if (resultCode == 200 && resultBody['status'] == "success") {
    successToast("Request Success");
    return true;
  } else {
    errorToast("Request failed! try again");
    return false;
  }
}

///Task list request
Future<List> taskListRequest(status) async {
  var url = Uri.parse("$baseURL/listTaskByStatus/$status");
  String? token = await readUserData("token");
  var requestHeaderWithToken = {
    "Content-Type": "application/json",
    "token": "$token"
  };
  var response = await http.get(url, headers: requestHeaderWithToken);
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

///Create task api request
Future<bool> taskCreateRequest(formValues) async {
  var url = Uri.parse("$baseURL/createTask");
  String? token = await readUserData("token");
  var requestHeaderWithToken = {
    "Content-type": "application/json",
    "token": "$token"
  };
  var postBody = json.encode(formValues);
  var response =
      await http.post(url, headers: requestHeaderWithToken, body: postBody);
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

///Task delete api request
Future<bool> taskDeleteRequest(id) async {
  var url = Uri.parse("$baseURL/deleteTask/$id");
  String? token = await readUserData("token");
  var requestHeaderWithToken = {
    "Content-type": "application/json",
    "token": "$token"
  };
  var response = await http.get(url, headers: requestHeaderWithToken);
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

///Task Update api request
Future<bool> taskUpdateRequest(id, status) async {
  var url = Uri.parse("$baseURL/updateTaskStatus/$id/$status");
  String? token = await readUserData("token");
  var requestHeaderWithToken = {
    "Content-type": "application/json",
    "token": "$token"
  };
  var response = await http.get(url, headers: requestHeaderWithToken);
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
