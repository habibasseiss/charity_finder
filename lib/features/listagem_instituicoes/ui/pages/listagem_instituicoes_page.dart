import 'package:charity_finder/features/listagem_instituicoes/ui/components/lista.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ListagemInstrucoesPage extends StatelessWidget {
  const ListagemInstrucoesPage({Key? key}) : super(key: key);

  static const routeName = '/listagem_instituicoes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        title: const Text('Instituições'),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Icon(Icons.search),
          ),
          TextButton(
            onPressed: () {},
            child: const Icon(Icons.filter_list_sharp),
          ),
        ],
      ),
      body: const SafeArea(
        child: List(),
      ),
    );
  }
}
