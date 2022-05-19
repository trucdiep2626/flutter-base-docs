import 'package:flutter/material.dart';
import 'package:flutter_base_docs/commom/core/constans.dart';
import 'package:flutter_base_docs/models/content.dart';
import 'package:flutter_base_docs/models/post.dart';

class ItemSisebar extends StatelessWidget {
  const ItemSisebar({Key? key, required this.listtutorial, this.onTap}) : super(key: key);
  final Post listtutorial;
  final void Function(List<Content> contents)? onTap;

  Widget _buildTiles(Post root) {
    if (root.subPost.isEmpty) {
      return GestureDetector(
        onTap: (){
          onTap!(root.contents);
        },
        child: ListTile(
          title: Text(root.title ?? ''),
        ),
      );
    }
    return GestureDetector(
      onTap:  (){
        onTap!(root.contents);
      },
      child: ExpansionTile(
        title: Text(root.title ?? ''),
        childrenPadding: const EdgeInsets.only(left: 20),
        children: root.subPost.map<Widget>((e) => _buildTiles(e)).toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(listtutorial);
  }
}
