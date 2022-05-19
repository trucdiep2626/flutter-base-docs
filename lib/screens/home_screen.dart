import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_base_docs/commom/commom_view/item_sidebar.dart';
import 'package:flutter_base_docs/commom/core/constans.dart';
import 'package:flutter_base_docs/models/content.dart';
import 'package:flutter_base_docs/screens/home_state_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inview_notifier_list/inview_notifier_list.dart';

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
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: ListView.builder(
                itemCount: listData.length,
                itemBuilder: (BuildContext context, int index) => ItemSisebar(
                  listtutorial: listData[index],
                  onTap: (List<Content> contents) {
                    ref.read(homeProvider.notifier).updateMainContent(contents);
                  },
                ),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child:
                // SingleChildScrollView(
                //   physics: NeverScrollableScrollPhysics(),
                //     child: Padding(
                //       padding: const EdgeInsets.all(16),
                //       child: Column(
                //         mainAxisAlignment: MainAxisAlignment.start,
                //         children: [
                //           Text(
                //             ref.watch(homeProvider).title ?? '',
                //             style: TextStyle(
                //                 fontWeight: FontWeight.bold, fontSize: 25),
                //           ),
               Stack(
                 fit: StackFit.expand,
                 children: [
                   InViewNotifierList(
                     shrinkWrap: true,
                     //     physics: NeverScrollableScrollPhysics(),
                     controller: contentsController,
                     initialInViewIds: ['0'],
                     isInViewPortCondition:
                         (double deltaTop, double deltaBottom, double vpHeight) {
                       return (deltaTop < (0.5 * vpHeight) + 100.0 &&
                           deltaBottom > (0.5 * vpHeight) - 100.0);
                     },
                     // inViewArea: Container(
                     //   height: 200.0,
                     //   color: Colors.redAccent.withOpacity(0.2),
                     // ),
                     itemCount: ref.watch(homeProvider).contents.length,
                     builder: (BuildContext context, int index) {
                       log('bbbbbbbbbbbb');
                       return InViewNotifierWidget(
                         id: index.toString(),
                         builder: (context, isInView, child) {
                           log('eeeeeeeeeeeeee');
                           log(isInView.toString());
                           log(ref.watch(homeProvider).contents[index].data ?? '');
                           if (isInView &&
                               ref.watch(homeProvider).contents[index].type ==
                                   ContentType.title) {
                             log(ref.watch(homeProvider).contents[index].data ?? '');
                             // ref.read(homeProvider.notifier).updateCurrentTitle(
                             //     ref.watch(homeProvider).contents[index].data ?? '');
                           }
                           return Padding(
                             padding: EdgeInsets.all(8.0),
                             child: _buildContent(
                                 ref.watch(homeProvider).contents[index]),
                           );
                         },
                       );
                     },
                   ),
              IgnorePointer(
                ignoring: true,
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                      height: 200.0,
                      color: Colors.redAccent.withOpacity(0.2),
                    ),
                ),)
                 ],
               )
            // ListView.builder(
            //     shrinkWrap: true,
            //     itemCount: ref.watch(homeProvider).contents.length,
            //     physics: NeverScrollableScrollPhysics(),
            //     itemBuilder: (context, index) => Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: _buildContent(
            //           ref.watch(homeProvider).contents[index]),
            //     ))
            //     ],
            //   ),
            // ))
          ),
          Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: ref
                        .watch(homeProvider)
                        .contents
                        .map(
                          (e) => e.type == ContentType.title
                              ? Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: Text(
                                    e.data ?? '',
                                    style: TextStyle(
                                      //  fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: ref
                                                    .watch(homeProvider)
                                                    .currentTitle ==
                                                (e.data ?? '')
                                            ? Colors.black
                                            : Colors.blue),
                                  ),
                                )
                              : SizedBox(),
                        )
                        .toList(),
                  ),
                ),
              )
              // ListView.builder(
              //   shrinkWrap: true,
              //   itemCount: ref.watch(homeProvider).contents.length,
              //   itemBuilder: (context, index) => ref
              //               .watch(homeProvider)
              //               .contents[index]
              //               .type ==
              //           ContentType.title
              //       ? Text(
              //           ref.watch(homeProvider).contents[index].data ?? '',
              //           style:
              //               TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              //         )
              //       : SizedBox(),
              // ),
              )
        ],
      ),
    );
  }

  Widget _buildContent(Content content) {
    switch (content.type) {
      case ContentType.title:
        return SelectableText(
          content.data ?? '',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        );
      case ContentType.text:
        return SelectableText(
          content.data ?? '',
          style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
        );
      case ContentType.code:
        return Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
              border: Border.all(), color: Colors.grey.withOpacity(0.5)),
          child: SelectableText(
            content.data ?? '',
            style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
          ),
        );
      case ContentType.image:
        return content.data == null
            ? SizedBox()
            : Center(
                child: Image.asset(
                content.data!,
                fit: BoxFit.scaleDown,
              ));
    }
  }
}
