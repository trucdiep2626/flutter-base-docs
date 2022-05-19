import 'package:flutter/material.dart';
import 'package:flutter_base_docs/data/firebase_docs.dart';
import 'package:flutter_base_docs/models/post.dart';

class Constans {}

final List<Post> listData = [
  FirebaseDocs.firebaseDocs,
];

// class Listtutorial {
//   final String title;
//   final List<Listtutorial> children;
//
//   Listtutorial(this.title, [this.children = const <Listtutorial>[]]);
// }
//
// final List<Listtutorial> listData = [
//   Listtutorial('Firebase', <Listtutorial>[
//     Listtutorial('login/ logout/ change pass'),
//     Listtutorial('login Facebook, google, apple'),
//     Listtutorial('Notification', <Listtutorial>[
//       Listtutorial('Dashboard'),
//       Listtutorial('Dashboard'),
//       Listtutorial('Dashboard'),
//     ]),
//     Listtutorial('OTP/ Capcha')
//   ]),
//   Listtutorial('Common View', <Listtutorial>[
//     Listtutorial('Theme - Appbar'),
//     Listtutorial('Dashboard'),
//     Listtutorial('Scroll View with refresh/ load more'),
//     Listtutorial('Web view')
//   ]),
//   Listtutorial('Util', <Listtutorial>[
//     Listtutorial('Navigation'),
//     Listtutorial('Validate'),
//     Listtutorial('Download/ upload'),
//     Listtutorial('Refresh/ Load more')
//   ]),
//   Listtutorial('Take picture'),
//   Listtutorial('Google Analytis'),
//   Listtutorial('Qr code'),
//   Listtutorial('Take picture'),
//   Listtutorial('Play video'),
// ];
