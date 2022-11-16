import 'package:charity_finder/features/listagem_instituicoes/ui/pages/listagem_instituicoes_page.dart';
import 'package:charity_finder/features/onboarding/ui/pages/onboarding_page.dart';
import 'package:charity_finder/src/components/pages/image_text_page.dart';
import 'package:charity_finder/src/components/pages/large_image_text_page.dart';
import 'package:flutter/material.dart';

import 'shared/button_widget.dart';

/// Displays a list of SampleItems.
class ComponentsListView extends StatelessWidget {
  const ComponentsListView({
    Key? key,
  }) : super(key: key);

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CharityFinder'),
      ),
      body: ListView(
        children: [
          const ListTile(
            title: Text('Componentes'),
            enabled: false,
          ),
          const Divider(),
          ButtonWidget(
            onPressed: () {
              print('teste');
            },
            title: 'Button',
            backgroundColor: Colors.grey,
            textColor: Colors.white,
          ),
          ListTile(
            title: const Text('Gechele'),
            subtitle: const Text('Call To Action (CTA)'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.of(context).pushNamed(LargeImageTextPage.routeName);
            },
          ),
          ListTile(
            title: const Text('Mateus'),
            subtitle: const Text('ImageText'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.of(context).pushNamed(ImageTextPage.routeName);
            },
          ),
          const Divider(),
          const ListTile(
            title: Text('Páginas'),
            enabled: false,
          ),
          ListTile(
            title: const Text('Onboarding'),
            subtitle: const Text('Página de introdução para o app'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.of(context).pushNamed(OnboardingPage.routeName);
            },
          ),
          ListTile(
            title: const Text('Listagem de Intituições'),
            subtitle: const Text('Mateus'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.of(context).pushNamed(ListagemInstrucoesPage.routeName);
            },
          ),
        ],
      ),
    );
  }
}
