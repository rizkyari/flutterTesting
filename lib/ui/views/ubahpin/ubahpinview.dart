import 'package:flutter/material.dart';
import 'package:screen_aminin/ui/views/ubahpin/pinbaruview.dart';

class UbahPin extends StatefulWidget {
  @override
  _UbahPinState createState() => _UbahPinState();
}

class _UbahPinState extends State<UbahPin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              'Ubah PIN',
              style: TextStyle(
                fontFamily: "Gotham-Bold",
                fontWeight: FontWeight.w700,
                fontSize: 15,
                color: Color(0xff9164cc),
              ),
            ),
          ),
          elevation: 0,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset("assets/images/icons/arrowLeft.png"),
          ),
          actions: [
            SizedBox(
              width: 50,
            )
          ],
        ),
        body: Container(
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 200,
                  child: Image.asset(
                    "assets/images/bg.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 40, right: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(
                      child: Text(
                        "Masukkan PIN Lama Anda",
                        style: TextStyle(
                            fontFamily: "Gotham-Bold",
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff454d66)),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: RaisedButton(
                        color: Color(0xFF9164CC),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PinBaru()));
                        },
                        child: Text(
                          "Lanjutkan",
                          style: TextStyle(
                              color: Colors.white, fontFamily: "Gotham-Bold"),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
