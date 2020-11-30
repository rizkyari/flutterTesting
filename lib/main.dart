import 'package:flutter/material.dart';
import 'package:screen_aminin/ui/views/bottomnav.dart';
//import 'package:screen_aminin/ui/views/main_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      home: MainViews(),
    home: BottomNav(),
    );
  }
}
