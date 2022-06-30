import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CarouselPage extends StatelessWidget {
  const CarouselPage({Key? key}) : super(key: key);

  static const routeName = '/components/carousel';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botão'),
      ),
      body: const Center(
        child: Carousel(
          urls: [
            "https://images.unsplash.com/photo-1656428379377-98039ab9695a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
            "https://images.unsplash.com/photo-1656410212766-5c0bb2b328be?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
          ],
          height: 200,
          width: 300,
        ),
      ),
    );
  }
}

class Carousel extends StatelessWidget {
  final List<String> urls;
  final double height, width;
  const Carousel(
      {Key? key, required this.urls, required this.height, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: height,
          width: width,
          child: PageView(
            children: [
              for (var url in urls) Image.network(url, fit: BoxFit.cover),
            ],
          ),
        ),
         TabPageSelector2(
          l: urls.length,
        ),
      ],
    );
  }
}

class TabPageSelector2 extends StatelessWidget {
  final int l;
  const TabPageSelector2({
    Key? key,
    required this.l,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (int i = 0; i < l; i++)
            Container(
              width: 20,
              height: 20,
              margin: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Colors.green,
              ),
            )
        ],
      ),
    );
  }
}
