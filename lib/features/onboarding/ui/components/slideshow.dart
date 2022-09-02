import 'package:flutter/material.dart';

class Slideshow extends StatelessWidget {
  const Slideshow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        AspectRatio(
          aspectRatio: 1,
          child: Placeholder(),
        ),
        SizedBox(height: 24.0),
        Text("Lorem ipsum dolor sit amet"),
      ],
    );
  }
}
