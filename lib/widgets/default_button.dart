import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      margin: EdgeInsets.only(top: 40),
      child: RaisedButton(
        color: Color(0xFF9164CC),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: Color(0xFF9164cc)),
        ),
        onPressed: () {
          print("button pressed");
        },
        child: Text(
          "Simpan",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

}