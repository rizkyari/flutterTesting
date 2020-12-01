import 'package:flutter/material.dart';
import 'package:screen_aminin/ui/views/ubahpin/ubahpinview.dart';
import 'package:screen_aminin/ui/views/ubahprofil/ubahprofil.dart';

class ProfileView extends StatefulWidget {
  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  List<UserInfo> _userInfos = [];
  List<ButtonNav> _buttonNavs = [];

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
            content: Stack(
          children: [
            Positioned(
              child: Image.asset("assets/images/bg.png"),
            ),
            SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.only(top: 20, bottom: 20),
                      child: Text(
                        'Apakah anda yakin akan keluar?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "Gotham-Book",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff454d66)),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RaisedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        color: Color(0xFFFFFFFF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                            color: Color(0xFF9164CC),
                          ),
                        ),
                        child: Text(
                          "TIdak",
                          style: TextStyle(
                            fontFamily: "Gotham-Book",
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Color(0xFF9164CC),
                          ),
                        ),
                      ),
                      RaisedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        color: Color(0xFF9164CC),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                            color: Color(0xFF9164CC),
                          ),
                        ),
                        child: Text(
                          "Ya",
                          style: TextStyle(
                            fontFamily: "Gotham-Book",
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Color(0xFFffffff),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ));
      },
    );
  }

  @override
  void initState() {
    super.initState();

    _userInfos.add(UserInfo(user: "Rizky Ari", key: "Nama"));
    _userInfos.add(UserInfo(user: "rizky@bahaso.com", key: "E-mail"));
    _userInfos.add(UserInfo(user: "081348620655", key: "Handphone"));
    _buttonNavs.add(ButtonNav(
        text: "Riwayat Transaksi", icon: "assets/images/icons/arrow.png" , destination: UbahPin()));
    _buttonNavs.add(
        ButtonNav(text: "Ubah PIN", icon: "assets/images/icons/arrow.png", destination: UbahPin()));
    _buttonNavs.add(
      ButtonNav(text: "Tukar Voucher", icon: "assets/images/icons/arrow.png", destination: UbahPin())
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'Profil',
            style: TextStyle(
              fontFamily: "Gotham-Bold",
              fontWeight: FontWeight.w700,
              fontSize: 15,
              color: Color(0xff9164cc),
            ),
          ),
        ),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Info Akun"),
                    RaisedButton(
                      onPressed: () {
                        print('clicked');
                        Navigator.push(context, MaterialPageRoute(builder: (_) => UbahProfil(),settings: null));
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color: Color(0xff9164cc))),
                      color: Color(0xff9164cc),
                      textColor: Colors.white,
                      child: Text("Ubah"),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: _userInfos
                      .map((item) => account(item.user, item.key))
                      .toList(),
                ),
              ),
              Container(
                child: Column(
                  children: _buttonNavs
                      .map((items) => buttonGo(context,items.text, items.icon, items.destination))
                      .toList(),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 15,
                ),
                width: MediaQuery.of(context).size.width,
                child: RaisedButton(
                  onPressed: () {
                    print('login with fb');
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Color(0xff1778F2))),
                  color: Color(0xff1778F2),
                  child: Container(
                    padding: EdgeInsets.only(top: 17, bottom: 17),
                    child: Text(
                      "Sambungkan ke Facebook",
                      style: TextStyle(
                          fontFamily: "Gotham-Bold",
                          fontWeight: FontWeight.w700,
                          fontSize: 13,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                child: GestureDetector(
                  onTap: () {
                    print("terms & condition");
                  },
                  child: Text(
                    "Syarat & Ketentuan",
                    style: TextStyle(
                        fontFamily: "Gotham-Bold",
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff00C1DE)),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40, bottom: 20),
                child: GestureDetector(
                  onTap: () {
                    _showMyDialog();
                  },
                  child: Text(
                    "Keluar",
                    style: TextStyle(
                        fontFamily: "Gotham-Bold",
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffDE0000)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget account(String user, String key) {
  return Container(
      padding: EdgeInsets.only(bottom: 10, top: 10),
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(width: 1.0, color: Color(0xFF5FD0DF)))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            user,
            style: TextStyle(
                fontFamily: "Gotham-Medium",
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(0xff454d66)),
          ),
          Text(
            key,
            style: TextStyle(
                fontFamily: "Gotham-Book",
                fontSize: 12,
//              fontWeight: FontWeight.w300,
                color: Color(0xff454d66)),
          )
        ],
      ));
}

Widget buttonGo(BuildContext context, String text, String icon, Widget destination) {
  return Container(
    margin: EdgeInsets.only(
      top: 15,
    ),
    child: RaisedButton(
      color: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: Colors.white)),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => destination));
      },
      child: Container(
        padding: EdgeInsets.only(top: 17, bottom: 17),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                  fontFamily: "Gotham-Medium",
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Color(0xff454d66)),
            ),
            Image.asset(icon),
          ],
        ),
      ),
    ),
  );
}

class UserInfo {
  final String user;
  final String key;

  UserInfo({this.user, this.key});
}

class ButtonNav {
  final String text;
  final String icon;
  final Widget destination;

  ButtonNav({this.text, this.icon, this.destination});
}
