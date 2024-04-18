import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lepricon_test/presentation/widgets/progress_widget.dart';

class AchievementCard extends StatelessWidget {
  const AchievementCard({super.key,  this.text, this.fun});

  final text;
  final Function()? fun;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10),
          decoration: BoxDecoration(
            color: const Color(0xFF151B3A),
            borderRadius: BorderRadius.circular(15),
          ),
          width: Get.width,
          height: 89,
          child:
          ProgressWidget(
            text: text,
              widget: Positioned(
              right: 20,
              top: 30,
              child: GestureDetector(onTap: fun,
                  child: Image.asset('assets/img_2.png', width: 32, height: 32,))),)
        ),
      ],
    );
  }
}