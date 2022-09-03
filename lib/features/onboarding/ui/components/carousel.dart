import 'package:charity_finder/features/onboarding/ui/components/carousel_page.dart';
import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
        CarouselPage(),
        CarouselPage(),
      ],
    );
  }
}
