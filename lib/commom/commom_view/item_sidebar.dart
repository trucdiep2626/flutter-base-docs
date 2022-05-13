import 'package:flutter/material.dart';
import 'package:flutter_base_docs/commom/core/constans.dart';

class ItemSisebar extends StatelessWidget {
  const ItemSisebar({Key? key, required this.listtutorial}) : super(key: key);
  final Listtutorial listtutorial;

  Widget _buildTiles(Listtutorial root) {
    if (root.children.isEmpty) {
      return ListTile(
        title: Text(root.title),
      );
    }
    return ExpansionTile(
      title: Text(root.title),
      childrenPadding: const EdgeInsets.only(left: 20),
      children: root.children.map<Widget>(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(listtutorial);
  }
}
