import 'package:chatbot/routes/app_routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    checkToken();
    super.onInit();
  }

  Future<void> checkToken() async {
    await Future.delayed(
      const Duration(seconds: 2),
      () {},
    );

    Get.offAllNamed(RouteName.chatbot);
  }
}
