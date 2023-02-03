import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContentBoarding2 extends StatelessWidget {
  const ContentBoarding2({super.key, this.title4});
  final String? title4;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 40),
                child: SizedBox(
                  width: 350,
                  height: 30,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          side: const BorderSide(
                              color: Color.fromRGBO(132, 132, 132, 2))),
                    ),
                    child: Text(
                      title4!,
                      style: const TextStyle(
                          fontSize: 20,
                          color: Color.fromRGBO(132, 132, 132, 2)),
                    ),
                  ),
                )),
          ],
        ),
      ],
    );
  }
}
