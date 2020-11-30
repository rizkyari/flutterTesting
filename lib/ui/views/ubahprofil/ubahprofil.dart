import 'package:flutter/material.dart';
import 'package:screen_aminin/widgets/default_button.dart';

class UbahProfil extends StatefulWidget {
  @override
  _UbahProfilState createState() => _UbahProfilState();
}

class _UbahProfilState extends State<UbahProfil> {
  String dropdownValue = '+62';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'Ubah Profil',
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
          SizedBox(width: 50,)
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
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
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/images/icons/profiles.png',
                        width: 100,
                        height: 100,
                      ),
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: Text(
                        'Rizky Ari',
                        style: TextStyle(
                            fontFamily: "Gotham-Bold",
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Color(0xff9164cc)),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 40, right: 40),
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: 15, bottom: 5),
                              alignment: Alignment.centerLeft,
                              child: Text("Nama")),
                          _buildTextField("Nama", cursorColor: Colors.red),
                          Container(
                              margin: EdgeInsets.only(top: 15, bottom: 5),
                              alignment: Alignment.centerLeft,
                              child: Text("E-mail")),
                          _buildTextField("E-Mail"),
                          Container(
                              margin: EdgeInsets.only(top: 15, bottom: 5),
                              alignment: Alignment.centerLeft,
                              child: Text("Nomor Handphone")),
                          Row(
                            children: [
                              DropdownButton<String>(
                                items: [
                                  DropdownMenuItem<String>(
                                      value: '+62', child: Text('+62')),
                                  DropdownMenuItem<String>(
                                      value: '+101', child: Text('+101')),
                                ],
                                onChanged: (_value) {
                                  setState(() {
                                    dropdownValue = _value;
                                  });
                                },
                                hint: Text(dropdownValue),
                              ),
                              Flexible(
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: "E-Mail"),
                                ),
                              ),
                            ],
                          ),
                          DefaultButton()
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(){
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

  Widget _buildTextField(String placeholder, {Color cursorColor = Colors.green, Widget blabal, double widht}){
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: placeholder),
      cursorColor: cursorColor,
    );
  }
}
