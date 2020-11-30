import 'package:flutter/material.dart';
class AlquranView extends StatefulWidget {
  @override
  _AlquranViewState createState() => _AlquranViewState();
}

class _AlquranViewState extends State<AlquranView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  title: Text('Alquran'),
      ),
      body: Container(
        child: Text('ayat'),
      ),
    );
  }
}
