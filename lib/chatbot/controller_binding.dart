import 'package:chatbot/chatbot/chatbot_controller.dart';
import 'package:get/get.dart';

class ChatbotBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ChatbotController());
  }
}
