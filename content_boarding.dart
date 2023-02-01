import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContentBoarding extends StatelessWidget {
  const ContentBoarding({super.key, this.title, this.title2});
  final String? title, title2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title!),
        SizedBox(
          width: 150,
          height: 150,
          child: ClipOval(
            child: Image(
              image: AssetImage('assets/images/$title2'),
              // fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
