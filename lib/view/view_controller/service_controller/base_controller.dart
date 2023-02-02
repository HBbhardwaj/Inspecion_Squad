import 'package:get/get.dart';

import '../../../api_services/rest_client.dart';

class BaseController extends GetxController {
  RestClient? restClient;

  @override
  onInit() {
    restClient = RestClient();
    super.onInit();
  }
}
