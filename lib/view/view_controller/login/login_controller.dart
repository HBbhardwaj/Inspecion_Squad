import 'package:dio/dio.dart';
import 'package:restaurants/api_services/method.dart';
import 'package:restaurants/helper/data_helper.dart';
import 'package:restaurants/helper/storage_helper.dart';

import '../../../api_model/login/login.model.dart';
import '../../../api_services/api_url.dart';
import '../../../api_services/rest_client.dart';
import '../service_controller/base_controller.dart';

class LoginController extends BaseController {
  Future<bool> callLoginApi(
    String email,
    String password,
  ) async {
    final map = Map<String, dynamic>();
    map['email'] = email;
    map['password'] = password;

    final params = Map<String, dynamic>();

    FormData formData = FormData.fromMap({});
    try {
      restClient = RestClient();
      final result = await restClient!
          .request(ApiUrl.login, Method.POST, map, params, formData);
      if (result != null) {
        var data = LoginModel.fromJson(result.data);
        DataHelper.debugPrintLog("loginUser", result);
        if (data.status == "200") {
          DataHelper.isLoading.value = false;
          DataHelper.showToast(data.message!);

          return true;
        } else {
          //  clearController();
          DataHelper.isLoading.value = false;
          DataHelper.debugPrintLog("LoginError ", data.message!);
          DataHelper.showToast(data.message!);
        }
      }

      return false;
    } on Exception catch (e) {
      DataHelper.printLog("LoginException", e.toString());
      DataHelper.isLoading.value = false;
      rethrow;
    }
  }
}
