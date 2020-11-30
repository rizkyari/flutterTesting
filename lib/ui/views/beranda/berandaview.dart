import 'package:flutter/material.dart';
import 'package:screen_aminin/ui/views/alquran/alquranview.dart';
import 'package:screen_aminin/ui/views/blog/blogview.dart';
import 'package:screen_aminin/ui/views/latihquran/latihview.dart';

class BerandaView extends StatefulWidget {
  @override
  _BerandaViewState createState() => _BerandaViewState();
}

class _BerandaViewState extends State<BerandaView> {
  List<MainMenu> _mainMenus = [];
  List<IconOther> _iconOthers = [];

  @override
  void initState() {
    super.initState();

    _mainMenus.add(MainMenu(
        iconImage: "assets/images/icons/alquran.png",
        description: "Al Quran",
        isBottomSheet: false,
        destinationPage: AlquranView()));
    _mainMenus.add(MainMenu(
        iconImage: "assets/images/icons/latihQuran.png",
        description: "Latih Quran",
        isBottomSheet: false,
        destinationPage: LatihQuran()));
    _mainMenus.add(MainMenu(
        iconImage: "assets/images/icons/ruangNgaji.png",
        description: "Ruang Ngaji",
        isBottomSheet: false,
        destinationPage: BlogView()));
    _mainMenus.add(MainMenu(
        iconImage: "assets/images/icons/otherProduct.png",
        description: "Lainnya",
        isBottomSheet: true,
        destinationPage: AlquranView()));

    _iconOthers.add(IconOther(
      iconThumb: "assets/images/icons/alquran.png",
      title: "Al-Qur'an"
    ));
    _iconOthers.add(IconOther(
        iconThumb: "assets/images/icons/latihQuran.png",
        title: "Latih Qur'an"
    ));
    _iconOthers.add(IconOther(
        iconThumb: "assets/images/icons/ruangNgaji.png",
        title: "Ruang Ngaji"
    ));
    _iconOthers.add(IconOther(
        iconThumb: "assets/images/icons/discussion.png",
        title: "Diskusi"
    ));
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120),
          child: AppBar(
              title: Container(
                height: 130,
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Assalamualaikum',
                      ),
                      Row(
                        children: <Widget>[
                          Column(
                            children: [
                              Text('18:20'),
                              Text('Maghrib'),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(40),
              )),
              backgroundColor: Color(0xFF9164CC)),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 80,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/banner.png"),
                          fit: BoxFit.fill),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.25),
                            spreadRadius: 5,
                            blurRadius: 5,
                          )
                        ]),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Image.asset('assets/images/icons/wallet.png'),
                          Column(
                            children: <Widget>[
                              Text(
                                'AminPay',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'GothamMedium',
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF454D66)),
                              ),
                              Text(
                                '100.000',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'GothamMedium',
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF454D66)),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          FlatButton(
                            onPressed: () {
                              print('Top up clicked');
                            },
                            child: Text(
                              'Top Up',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'GothamMedium',
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF9164CC)),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: SingleChildScrollView(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: _mainMenus
                            .map((menu) => iconMenu(
                                  context,
                                  menu.iconImage,
                                  menu.description,
                                  menu.isBottomSheet,
                                  menu.destinationPage,
                                ))
                            .toList(),
                      ),
//
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Container(
                    padding: EdgeInsets.all(3.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Renungan Harian',
                          style: TextStyle(
                              fontFamily: 'GothamMedium',
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                        Image.asset('assets/images/icons/arrow.png'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 300,
//                    width: 300,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
//                      color: Color(0xFF9164CC),
                      image: DecorationImage(
                        image: AssetImage("assets/images/renungan.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget iconMenu(
  BuildContext context,
  String iconImage,
  String description,
  bool isBottomSheet,
  Widget destinationPage,
) {
  return GestureDetector(
    onTap: () {
//        print("$isBottomSheet");
      if (isBottomSheet)
        _newTaskModalBottomSheet(context);
      else {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => destinationPage));
      }
    },
    child: Container(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Column(
        children: [
          Image.asset(iconImage),
          SizedBox(
            height: 10,
          ),
          Text(
            description,
            style: TextStyle(
                color: Color(0xFF454D66),
                fontFamily: 'GothamMedium',
                fontWeight: FontWeight.w500,
                fontSize: 10),
          )
        ],
      ),
    ),
  );
}

Widget otherSheet(iconThumb, title){
  return Container(
    child: Column(
      children: [
        Image.asset(iconThumb),
        SizedBox(height: 10,),
        Text(title,  style: TextStyle(
            color: Color(0xFF454D66),
            fontFamily: 'GothamMedium',
            fontWeight: FontWeight.w500,
            fontSize: 10),)
      ],
    ),
  );
}

void _newTaskModalBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      builder: (BuildContext bc) {
        return Container(
            height: 200,
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        "assets/images/icons/exit.png",
                        height: 20,
                        width: 20,
                      ),
                    ),
                    Text(
                      "Lainnya",
                      style: TextStyle(
                          fontFamily: "Gotham-Bold",
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Color(0xff9164CC)),
                    ),
                    Image.asset(
                      "assets/images/icons/EditPencil.png",
                      height: 20,
                      width: 20,
                      color: Color(0xff9164CC),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 30, bottom: 30),
                  child: SingleChildScrollView(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        otherSheet("assets/images/icons/alquran.png", "Al-Qur'an"),
                        otherSheet("assets/images/icons/latihQuran.png", "Latih Qur'an"),
                        otherSheet("assets/images/icons/ruangNgaji.png", "Ruang Ngaji"),
                        otherSheet("assets/images/icons/discussion.png", "Diskusi")
                      ],
                    ),
                  ),
                )
              ],
            ));
      });
}

class MainMenu {
  final String iconImage;
  final String description;
  final bool isBottomSheet;
  final Widget destinationPage;

  MainMenu({
    this.iconImage,
    this.description,
    this.isBottomSheet,
    this.destinationPage,
  });
}

class IconOther {
  final String iconThumb;
  final String title;

  IconOther({
    this.iconThumb, this.title
});
}