import 'package:get/get.dart';
import '../../../contracts/ContractLogin.dart';
import '../../../helper/data_helper.dart';
import '../../../utils/text_edit_controller.dart';
import '../../HomePage.dart';
import '../login/login_controller.dart';
import '../service_controller/base_controller.dart';

class HomeController extends BaseController {
  void callLoginApi(Presenter pre) {
    Get.put(LoginController())
        .callLoginApi(emailController.text.toString().trim(),
            passwordController.text.toString().trim())
        .then((value) {
      if (value) {
        DataHelper.isLoading.value = false;
        emailController.clear();
        passwordController.clear();
        pre.doLogin();

        // Get.to(const HomePage(), transition: Transition.noTransition);
      }
    });
  }
}
