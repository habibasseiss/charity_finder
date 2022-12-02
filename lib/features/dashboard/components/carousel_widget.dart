import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({Key? key}) : super(key: key);

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  final carroController = CarouselController();
  int selectIndexCarousel = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {},
          child: CarouselSlider(
            options: CarouselOptions(
                autoPlay: false,
                enableInfiniteScroll: false,
                scrollPhysics: const RangeMaintainingScrollPhysics(),
                onPageChanged: (index, reason) {
                  setState(() {
                    selectIndexCarousel = index;
                  });
                },
                height: MediaQuery.of(context).size.height * .23),
            carouselController: carroController,
            items: List.generate(
                3,
                (index) => const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Placeholder(),
                    )),
          ),
        ),
        DotsIndicator(
          decorator: const DotsDecorator(
            size: Size(20, 20),
            activeSize: Size(20, 20),
            activeColor: Colors.grey,
            color: Colors.white,
            shape: CircleBorder(side: BorderSide()),
            activeShape: CircleBorder(side: BorderSide()),
          ),
          dotsCount: 3,
          position: selectIndexCarousel.toDouble(),
        ),
      ],
    );
  }
}
