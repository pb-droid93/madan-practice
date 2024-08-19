import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_flutter/utils/text.dart';

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
            right: -150,
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white.withOpacity(0.1)),
            ),
          ),
          Positioned(
            left: -200,
            bottom: -470,
            child: Container(
              height: 600,
              width: 600,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white.withOpacity(0.1)),
            ),
          ),
          Positioned(
            top: -100,
            left: -100,
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white.withOpacity(0.1)),
            ),
          ),
          Positioned(
              top: 25,
              left: 15,
              child: Container(
                height: 30,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Image.asset(
                  'assets/images/logo.png',
                ),
              )),
          Positioned(
            top: 62,
            left: 25,
            child: ModifiedText(
              text: "It's where you want to be",
              color: Colors.grey.shade900,
              size: 14,
            ),
          ),
          Positioned(
              bottom: 30,
              left: 15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "7899 4567 3420 8724",
                    style: GoogleFonts.sourceCodePro(
                        fontSize: 24,
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "PAPPU BAHADUR",
                    style: GoogleFonts.sourceCodePro(
                        fontSize: 20,
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              )),
          Positioned(
              right: 10,
              child: Container(
                height: 80,
                child: Image.asset('assets/images/chip.png'),
              ))
        ],
      ),
    );
  }
}
