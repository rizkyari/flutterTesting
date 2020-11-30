import 'package:flutter/material.dart';
import 'package:screen_aminin/ui/views/alquran/alquranview.dart';
import 'package:screen_aminin/ui/views/blog/blogview.dart';
import 'package:screen_aminin/ui/views/latihquran/latihview.dart';

class MainViews extends StatefulWidget {
  @override
  _MainViewsState createState() => _MainViewsState();
}

class _MainViewsState extends State<MainViews> {
  List<MainMenu> _mainMenus = [];

  int _currentIndex = 0;

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
  }

  @override
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
                            .map((menu) => IconMenu(
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
        bottomNavigationBar: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 15.0,
            )
          ]),
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.all(5),
                  child: ImageIcon(
                    AssetImage('assets/images/icons/beranda.png'),
                    color: _currentIndex == 0
                        ? Color(0xFF8F00FF)
                        : Color(0xFFADADAD),
                  ),
                ),
                label: 'Beranda',
              ),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.all(5),
                    child: ImageIcon(
                      AssetImage('assets/images/icons/blog.png'),
                      color: _currentIndex == 1
                          ? Color(0xFF8F00FF)
                          : Color(0xFFADADAD),
                    ),
                  ),
                  label: 'Blog'),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.all(5),
                    child: ImageIcon(
                      AssetImage('assets/images/icons/pesan.png'),
                      color: _currentIndex == 2
                          ? Color(0xFF8F00FF)
                          : Color(0xFFADADAD),
                    ),
                  ),
                  label: 'Pesan'),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.all(5),
                    child: ImageIcon(
                      AssetImage('assets/images/icons/user.png'),
                      color: _currentIndex == 3
                          ? Color(0xFF8F00FF)
                          : Color(0xFFADADAD),
                    ),
                  ),
                  label: 'Profil'),
            ],
            selectedItemColor: Color(0xFF8F00FF),
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            selectedLabelStyle: TextStyle(
                fontFamily: 'GothamMedium',
                fontWeight: FontWeight.w500,
                fontSize: 10),
            unselectedLabelStyle: TextStyle(
                fontFamily: 'GothamMedium',
                fontWeight: FontWeight.w500,
                fontSize: 10),
          ),
        ),
      ),
    );
  }

  Widget IconMenu(
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
        else
          {
            Navigator.push(context, MaterialPageRoute(builder: (context) => destinationPage));
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

void _newTaskModalBottomSheet(context){
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc){
        return Container(
          child: new Wrap(
            children: <Widget>[
              new ListTile(
                  leading: new Icon(Icons.music_note),
                  title: new Text('Music'),
                  onTap: () => {}
              ),
              new ListTile(
                leading: new Icon(Icons.videocam),
                title: new Text('Video'),
                onTap: () => {},
              ),
            ],
          ),
        );
      }
  );
}
