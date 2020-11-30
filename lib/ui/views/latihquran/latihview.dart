import 'package:flutter/material.dart';

class LatihQuran extends StatefulWidget {
  @override
  _LatihQuranState createState() => _LatihQuranState();
}

class _LatihQuranState extends State<LatihQuran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Color(0xFF9164CC),),
          onPressed: () => Navigator.pop(context),
        ),
      ),
        body: Center(
      child: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/icons/latihQuranBig.png',
                  height: 90,
                  width: 80,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Latih',
                      style: TextStyle(
                          fontFamily: 'Gotham-Bold',
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF454D66),
                          fontSize: 48),
                    ),
                    Text(
                      "Qur'an",
                      style: TextStyle(
                          fontFamily: 'Gotham-Bold',
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF9164CC),
                          fontSize: 48),
                    ),
                  ],
                )
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 55, 0, 0),
              child: Column(
                children: [
                  Text(
                    'Pilih mode:',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Gotham-Bold',
                      fontSize: 13,
                      color: Color(0xFF454D66),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    margin: EdgeInsets.fromLTRB(0, 18, 0, 8),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      onPressed: () {
                        print('Button is pressed');
                      },
                      color: Color(0xFF9164CC),
                      child: Text(
                        'Pemula',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Gotham-Bold',
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  Text(
                    'Pengenalan Hijaiyah dan Tanda Baca',
                    style: TextStyle(
                        fontFamily: 'GothamMedium',
                        fontWeight: FontWeight.w300,
                        fontSize: 10,
                        color: Color(0xFF454D66)),
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    margin: EdgeInsets.fromLTRB(0, 18, 0, 8),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      onPressed: () {
                        print('Button is pressed');
                      },
                      color: Color(0xFF9164CC),
                      child: Text(
                        'Mahir',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Gotham-Bold',
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  Text(
                    "Menghafal Qur'an dan memahami maknanya",
                    style: TextStyle(
                      fontFamily: 'GothamMedium',
                      fontWeight: FontWeight.w300,
                      fontSize: 10,
                      color: Color(0xFF454D66),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
