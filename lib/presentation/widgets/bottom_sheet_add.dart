import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:lepricon_test/presentation/widgets/text_field_imitation.dart';

import 'button.dart';

class CustomBottomSheetAdd extends StatelessWidget {
  const CustomBottomSheetAdd({super.key, this.fun});

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
          height: 300,
          decoration: const BoxDecoration(color: Color(0xFF1F265E),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight:  Radius.circular(15),)),
          child: const Stack(children: [
            Positioned(top: 40, left: 15,
              child: Text(
              'Add New Debts',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w900,
                height: 0.06,
              ),),
            ),
            Positioned(top: 90,
                child: TextFieldImitation(text: 'Name',)
            ),
            Positioned(top: 150,
                child: TextFieldImitation(text: 'Sum',)
            ),
            Positioned(top: 210, left: 0, right: 0,
                child: CustomButton())
          ],),
        ),
      ],
    );
  }
}
