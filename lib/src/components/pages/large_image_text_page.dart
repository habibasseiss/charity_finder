import 'package:flutter/material.dart';

/// Página que exibirá o componente específico de Botão
class LargeImageTextPage extends StatelessWidget {
  const LargeImageTextPage({Key? key}) : super(key: key);

  static const routeName = '/components/LargeImageText';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('botão'),
      ),
      body: const Center(
        child: LargeImageText(
          title: 'teste',
          url:
              "https://images.unsplash.com/photo-1651538788343-00a9605d3d63?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
        ),
      ),
    );
  }
}

/// Componente de botão que será reutilizável
class LargeImageText extends StatelessWidget {
  final String title;
  final String url;

  const LargeImageText({
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
          width: 300,
          height: 300,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: 300,
          child: Text(
            title,
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.headline1,
          ),
        )
      ],
    );
  }
}
