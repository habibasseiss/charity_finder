import 'package:flutter/material.dart';

class CarouselPage extends StatelessWidget {
  const CarouselPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.80,
            child: const AspectRatio(
              aspectRatio: 1,
              child: Placeholder(),
            ),
          ),
          const SizedBox(height: 24.0),
          const Text("Lorem ipsum dolor sit amet"),
        ],
      ),
    );
  }
}
