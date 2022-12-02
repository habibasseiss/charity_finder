import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  final String title;
  final String url;
  final String descricao;

  const ListPage({
    Key? key,
    required this.title,
    required this.url,
    required this.descricao,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network(
            url,
            width: 75,
            height: 64,
            fit: BoxFit.cover,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.headline6,
              ),
              Text(textAlign: TextAlign.end, descricao),
            ],
          ),
          const Icon(Icons.chevron_right),
        ],
      ),
    );
  }
}
