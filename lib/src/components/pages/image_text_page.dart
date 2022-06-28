import 'package:flutter/material.dart';

/// Página que exibirá o componente específico de Botão
class ImageTextPage extends StatelessWidget {
  const ImageTextPage({Key? key}) : super(key: key);

  static const routeName = '/components/ImageText';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ImageText'),
      ),
      body: const Center(
        child: ImageText(
          title: "Lorem ipsum dolor sit amet kkkk",
          url:
              'https://images.unsplash.com/photo-1656411579947-6731ff8568df?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80',
        ),
      ),
    );
  }
}

/// Componente de botão que será reutilizável
class ImageText extends StatelessWidget {
  final String title;
  final String url;

  const ImageText({
    Key? key,
    required this.title,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.network(
          url,
          width: 150,
          height: 128,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 8),
        SizedBox(
          width: 150,
          child: Text(
            title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
      ],
    );
  }
}
