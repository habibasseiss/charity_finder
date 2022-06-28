import 'package:charity_finder/src/components/pages/button_detail_page.dart';
import 'package:charity_finder/src/components/pages/large_image_text_page.dart';
import 'package:charity_finder/src/components/pages/image_text_page.dart';
import 'package:flutter/material.dart';

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
        title: const Text('Componentes'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Botão'),
            subtitle: const Text('Call To Action (CTA)'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.of(context).pushNamed(ButtonDetailPage.routeName);
            },
          ),
          const Divider(),
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
        ],
      ),
    );
  }
}
