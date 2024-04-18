import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';
import '../widgets/bottom_sheet_add.dart';
import '../widgets/bottom_sheet_edit.dart';
import '../widgets/card.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: const Color(0xFF1F265E),
        child: Stack(
          children: [
            Positioned(
              left: 20,
              top: 60,
              child: Image.asset('assets/img_1.png', width: 40, height: 40),
            ),
            const Positioned(
              top: 72,
              left: 75,
              child: Text(
                'Debts To Me',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w900,
                  height: 0.06,
                ),
              ),
            ),
            Positioned(
              right: 20,
              top: 54,
              child: GestureDetector(onTap: (){
                homeController.showBottomSheet( CustomBottomSheetAdd(fun: (){Navigator.of(context).pop();},));
              }, child: Image.asset('assets/img.png', width: 36, height: 36)),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 120,
              child: Obx(
                    () => Column(
                  children: homeController.users
                      .map((user) => AchievementCard(
                    text: user.name,
                    fun: (){
                      homeController.showBottomSheet( CustomBottomSheetEdit(fun: (){Navigator.of(context).pop();},),);
                    },))
                      .toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

