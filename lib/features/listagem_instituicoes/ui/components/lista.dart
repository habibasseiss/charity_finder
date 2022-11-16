import 'package:charity_finder/features/listagem_instituicoes/ui/components/list_page.dart';
import 'package:flutter/material.dart';

class List extends StatelessWidget {
  const List({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListPage(
          title: "Lorem ipsum dolor",
          url:
              'https://images.unsplash.com/photo-1656411579947-6731ff8568df?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80',
          descricao: "Lorem ipsum dolor",
        ),
        ListPage(
          title: "Titulo 2",
          url:
              'https://images.unsplash.com/photo-1656411579947-6731ff8568df?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80',
          descricao: "Descrição 2",
        ),
        ListPage(
          title: "Titulo 3",
          url:
              'https://images.unsplash.com/photo-1656411579947-6731ff8568df?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80',
          descricao: "Descrição 3",
        ),
        ListPage(
          title: "Titulo 4",
          url:
              'https://images.unsplash.com/photo-1656411579947-6731ff8568df?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80',
          descricao: "Descrição 4",
        ),
      ],
    );
  }
}
