import 'package:chatbot/service/chatbot_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:chatbot/model/chatbot_model.dart';

class ChatbotController extends GetxController {
  int bubbleChatCount = 0;
  TextEditingController inputController = TextEditingController();

  ChatbotModel? response;
  List<String> chat = [];
  @override
  void onInit() {
    print("Sign In Sign Up Screen is Start");
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

  // void incrementEmailField() {
  //   emailFieldCount++;
  //   update();
  // }

  Future<void> sendMessage() async {
    try {
      String msg = inputController.text;
      inputController.clear();
      chat.add(msg);
      response = await ChatbotService.authLogin(msg);
      chat.add(response?.message ?? "");
      bubbleChatCount += 2;
      update();
    } catch (e) {
      Get.snackbar(
        'Gagal Mengirim Pesan',
        'Cek Koneksi Anda',
        backgroundColor: Colors.blue,
        colorText: Colors.white,
        icon: const Icon(
          Icons.cancel,
          color: Colors.white,
        ),
      );
    }
  }
}
