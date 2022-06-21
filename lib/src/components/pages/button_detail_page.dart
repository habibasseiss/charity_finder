import 'package:flutter/material.dart';

/// Página que exibirá o componente específico de Botão
class ButtonDetailPage extends StatelessWidget {
  const ButtonDetailPage({Key? key}) : super(key: key);

  static const routeName = '/components/button';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botão'),
      ),
      body: Center(
        child: Button(
          onPressed: () {},
          title: 'Teste',
        ),
      ),
    );
  }
}

/// Componente de botão que será reutilizável
class Button extends StatelessWidget {
  final String title;
  final Function() onPressed;

  const Button({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(title),
    );
  }
}
