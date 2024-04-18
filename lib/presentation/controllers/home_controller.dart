import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../data/models/user_model.dart';
import '../../data/repositories/user_repository.dart';

class HomeController extends GetxController {
  final UserRepository userRepository = UserRepository();
  final users = <UserModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchUsers();
  }

  void fetchUsers() async {
    final fetchedUsers = await userRepository.getUsers();
    if (fetchedUsers != null && fetchedUsers.isNotEmpty) {
      users.assignAll(fetchedUsers);
    } else {
      Get.snackbar('Ошибка', 'Не удалось загрузить пользователей');
    }
  }

  void showBottomSheet(Widget w) {
    Get.bottomSheet(
      w
    );
  }


}


