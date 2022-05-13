import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends HookConsumerWidget {
  final tableOfContentsController = ScrollController();
  final contentsController = ScrollController();
  final titlesListController = ScrollController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Base Code'),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Scrollbar(
              isAlwaysShown: true,
              controller: tableOfContentsController,
              child: ListView(
                controller: tableOfContentsController,
                shrinkWrap: true,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text('Flutter Base Code'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text('Flutter Base Code'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text('Flutter Base Code'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text('Flutter Base Code'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text('Flutter Base Code'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text('Flutter Base Code'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text('Flutter Base Code'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text('Flutter Base Code'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text('Flutter Base Code'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text('Flutter Base Code'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text('Flutter Base Code'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text('Flutter Base Code'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text('Flutter Base Code'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text('Flutter Base Code'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text('Flutter Base Code'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text('Flutter Base Code'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text('Flutter Base Code'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text('Flutter Base Code'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text('Flutter Base Code'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text('Flutter Base Code'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text('Flutter Base Code'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text('Flutter Base Code'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text('Flutter Base Code'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text('Flutter Base Code'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text('Flutter Base Code'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text('Flutter Base Code'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text('Flutter Base Code'),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 6,
              child: SingleChildScrollView(
                controller: contentsController,
                child: Text(
                    'It\'s working. Thank you! And I want to know the reason behind this exception. When I only had the WriteActivity in my app, it worked and dint throw any exception. Why is it doing it now?'),
              )),
          Expanded(
            flex: 1,
            child: ListView(
              shrinkWrap: true,
              controller: titlesListController,
              children: [
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
