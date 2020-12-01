import 'package:flutter/material.dart';

class KonfirmasiPin extends StatefulWidget {
  @override
  _KonfirmasiPinState createState() => _KonfirmasiPinState();
}

class _KonfirmasiPinState extends State<KonfirmasiPin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              'Verifikasi',
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
                        "Konfirmasikan PIN Baru Anda",
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
                          showDialog(context: context, builder: (BuildContext context){
                            return AlertDialog(
                              contentPadding: EdgeInsets.all(0),
                              backgroundColor: Color(0xff00C1DE),
                              content: Builder(
                                builder: (context){
                                  var height = MediaQuery.of(context).size.height;
                                  var width = MediaQuery.of(context).size.width;

                                  return Container(
                                    height: height -400,
                                    width: width -100,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          bottom: 0,
                                          left: 0,
                                          right: 0,
                                          child: Container(
//                                      height: 200,
                                            child: Image.asset(
                                              "assets/images/Footer.png",
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(top: 35),
                                          child: Center(child: Column(children: [
                                            Container(
                                              child: Text("Berhasil!", style: TextStyle(
                                                  fontFamily: "Gotham-Bold",
                                                  fontSize: 28,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white
                                              ),),
                                            ),
                                            Container(
                                              child: Text("Pin Anda telah diubah", style: TextStyle(
                                                  fontFamily: "Gotham-Bold",
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white
                                              ),),
                                            ),
                                          ],),),
                                        )
                                      ],
                                    ),
                                  );
                                },
                              )
                            );
                          });
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
        )
    );
  }
}
