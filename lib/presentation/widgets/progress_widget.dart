import 'package:flutter/material.dart';

class ProgressWidget extends StatelessWidget {
  const ProgressWidget({super.key,
    this.text = 'Anna',
    this.widget,
    this.progressGreen = 105.0,
    this.progressWhite = 210.0,
    this.progressWidth = 210.0});

  final text;
  final Widget? widget;
  final progressGreen;
  final progressWhite;
  final progressWidth;


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 20,
          top: 25,
          child: SizedBox(
            width: 221,
            height: 25,
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w700,
                height: 0.12,
              ),
            ),
          ),
        ),
        const Positioned(
          left: 20,
          top: 45,
          child: SizedBox(
            width: 187,
            height: 16,
            child: Text(
              '\$300/\$1000 ',
              style: TextStyle(
                color: Color(0xFF4AB854),
                fontSize: 12,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w700,
                height: 0.11,
              ),
            ),
          ),
        ),
        Positioned(
          left: 20,
          top: 60,
          child: SizedBox(
            width: progressWidth,
            height: 12,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: progressWhite,
                    height: 12,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFF4F4F4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.11),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: progressGreen,
                    height: 12,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF4AB854),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.11),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        widget ?? const SizedBox(),


      ],
    );
  }
}
