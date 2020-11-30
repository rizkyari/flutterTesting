import 'package:flutter/material.dart';
import 'package:screen_aminin/ui/views/beranda/berandaview.dart';
import 'package:screen_aminin/ui/views/blog/blogview.dart';
import 'package:screen_aminin/ui/views/pesan/pesanview.dart';
import 'package:screen_aminin/ui/views/profil/profileview.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    BerandaView(),
    BlogView(),
    PesanView(),
    ProfileView(),
  ];
//  void _onItemTap(int index) {
//    setState(() {
//      _selectedIndex = index;
//    });
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _widgetOptions.elementAt((_selectedIndex)),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 15.0,
          )
        ]),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.all(5),
                child: ImageIcon(
                  AssetImage('assets/images/icons/beranda.png'),
                  color: _selectedIndex == 0
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
                    color: _selectedIndex == 1
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
                    color: _selectedIndex == 2
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
                    color: _selectedIndex == 3
                        ? Color(0xFF8F00FF)
                        : Color(0xFFADADAD),
                  ),
                ),
                label: 'Profil'),
          ],
          selectedItemColor: Color(0xFF8F00FF),
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
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
    );
  }
}
