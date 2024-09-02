import 'package:chatbot/chatbot/chatbot_screen.dart';
import 'package:chatbot/chatbot/controller_binding.dart';
import 'package:chatbot/splash/splash_binding.dart';
import 'package:chatbot/splash/splash_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'app_routes.dart';

class AppPages {
  static const initial = RouteName.splash;

  static final pages = [
    GetPage(
      name: RouteName.splash,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: RouteName.chatbot,
      page: () => ChatbotScreen(),
      binding: ChatbotBinding(),
    ),
  ];
}
