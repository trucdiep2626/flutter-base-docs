import 'package:flutter/material.dart';
import 'package:flutter_base_docs/commom/commom_view/item_sidebar.dart';
import 'package:flutter_base_docs/commom/core/constans.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends HookConsumerWidget {
  final tableOfContentsController = ScrollController();
  final contentsController = ScrollController();
  final titlesListController = ScrollController();

  HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Flutter Base Code',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: ListView.builder(
              itemCount: listData.length,
              itemBuilder: (BuildContext context, int indext) =>
                  ItemSisebar(listtutorial: listData[indext]),
            ),
          ),
          Expanded(
              flex: 6,
              child: SingleChildScrollView(
                  controller: contentsController,
                  child: Column(
                    children: [
                      Container(
                        height: 500,
                        child: const Text(
                            'It\'s working. Thank you! And I want to know the reason behind this exception. When I only had the WriteActivity in my app, it worked and dint throw any exception. Why is it doing it now?'),
                      ),
                      Container(
                        height: 500,
                        child: const Text(
                            'It\'s working. Thank you! And I want to know the reason behind this exception. When I only had the WriteActivity in my app, it worked and dint throw any exception. Why is it doing it now?'),
                      ),
                      Container(
                        height: 500,
                        child: const Text(
                            'It\'s working. Thank you! And I want to know the reason behind this exception. When I only had the WriteActivity in my app, it worked and dint throw any exception. Why is it doing it now?'),
                      ),
                      Container(
                        height: 500,
                        child: const Text(
                            'It\'s working. Thank you! And I want to know the reason behind this exception. When I only had the WriteActivity in my app, it worked and dint throw any exception. Why is it doing it now?'),
                      )
                    ],
                  ))),
          Expanded(
            flex: 1,
            child: ListView(
              controller: titlesListController,
              children: const [
                Text('Flutter Base Code'),
                Text('Flutter Base Code'),
                Text('Flutter Base Code'),
                Text('Flutter Base Code'),
                Text('Flutter Base Code'),
                Text('Flutter Base Code'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
