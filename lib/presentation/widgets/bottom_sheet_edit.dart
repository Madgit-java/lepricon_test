import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:lepricon_test/presentation/widgets/progress_widget.dart';
import 'package:lepricon_test/presentation/widgets/text_field_imitation.dart';

import 'button.dart';
import 'button_container.dart';

class CustomBottomSheetEdit extends StatelessWidget {
  const CustomBottomSheetEdit({super.key, this.fun});

  final Function()? fun;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(onTap: fun,
          child: Container(alignment: Alignment.centerRight, margin: const EdgeInsets.only(right: 15, bottom: 15),
              child: Image.asset('assets/img_3.png', width: 40,)),
        ),
        Container(
          width: Get.width,
          height: 400,
          decoration: const BoxDecoration(color: Color(0xFF1F265E),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight:  Radius.circular(15),)),
          child:  Stack(children: [
            Positioned(top: 0, left: -5, right: 15,
              child: SizedBox(
                  width: Get.width,
                  height: 89,
                  child:
                   ProgressWidget(
                    progressGreen:  Get.width/2, progressWhite:  Get.width, progressWidth: Get.width,
                  )
              ),
            ),
            const Positioned(top: 110, left: 15,
                child: Text(
                  'Give me',
                  style: TextStyle(
                    color: Color(0xFF8B97A9),
                    fontSize: 14,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w700,
                    height: 0.04,
                  ),
                ),
            ),
            const Positioned(left: 15, top: 142,
              child: Text(
                '+ 100',textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
            const Positioned(top: 150, right: 15,
              child: RotatedBox(
                  quarterTurns: 3,
                  child: Icon(Icons.arrow_back_ios_new, color: Colors.green, weight: 26, ))
            ),
            const Positioned(top: 140, right: 0,
              child: SizedBox(
                width: 70,
                height: 50,
                child: Text(
                  '€',
                  style: TextStyle(
                    color: Color(0xFF8B97A9),
                    fontSize: 40,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
            ),
            Positioned(top: 220, left: 15,
                child: SizedBox(
                  width: Get.width,
                  height: 34,
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ButtonContainer( text: '20', color: Color(0x354AB854),),
                      SizedBox(width: 12),
                      ButtonContainer( text: '50', color: Color(0x354AB854),),
                      SizedBox(width: 12),
                      ButtonContainer( text: '100', color: Color(0xFF4AB854),),
                      SizedBox(width: 12),
                      ButtonContainer( text: '500', color: Color(0x354AB854),),
                    ],
                  ),
                ),
            ),
            const Positioned(top: 260, left: 15, right: 0,
              child: Text(
                'Auto Convert 100€ = 101\$ ',
                style: TextStyle(
                  color: Color(0xFF4AB854),
                  fontSize: 12,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ),
            const Positioned(top: 320, left: 0, right: 0,
                child: CustomButton())
          ],),
        ),
      ],
    );
  }
}
