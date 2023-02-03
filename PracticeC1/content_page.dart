import 'package:flutter/material.dart';

AnimatedContainer page(int? index, int? currentPage) {
  return AnimatedContainer(
      duration: kThemeAnimationDuration,
      margin: const EdgeInsets.only(right: 10),
      height: 6,
      width: currentPage == index ? 35 : 25,
      decoration: BoxDecoration(
        color: currentPage == index
            ? const Color.fromRGBO(251, 23, 101, 1)
            : Colors.grey,
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ));
}
