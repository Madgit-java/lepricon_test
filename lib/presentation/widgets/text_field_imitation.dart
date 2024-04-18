import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class TextFieldImitation extends StatelessWidget {
  const TextFieldImitation({super.key, this.text});

  final text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: Get.width,
          height: 43,
          child: Stack(
            children: [
              Positioned(
                left: 15,
                top: 10,
                child: SizedBox(
                  width: 68.74,
                  child: Text(
                    text,
                    style: const TextStyle(
                      color: Color(0xFF8B97A9),
                      fontSize: 14,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w700,
                      height: 0.04,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 15,
                left: 15,
                top: 43,
                child: Container(
                  width: 318.81,
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFFE7E7E7),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
