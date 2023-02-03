import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class ContentBoarding extends StatelessWidget {
  const ContentBoarding({super.key, this.title, this.title2, this.title3});
  final String? title, title2, title3;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: SizedBox(
                width: 250,
                height: 250,
                child: Image(
                  image: AssetImage('assets/images/$title2'),
                  // fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Column(
            children: [
              Text(
                title!,
                // ignore: prefer_const_constructors
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromRGBO(86, 43, 129, 1),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 360,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 15,
                    left: 30,
                    right: 30,
                  ),
                  child: Text(
                    title3!,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.albertSans(
                      textStyle: const TextStyle(
                          color: Color.fromRGBO(132, 132, 132, 1),
                          letterSpacing: .2,
                          fontSize: 24,
                          fontWeight: FontWeight.w300),
                    ),
                    // const TextStyle(
                    //   color: Color.fromRGBO(132, 132, 132, 1),
                    //   fontSize: 22,
                    // ),
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
