import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:smkidn_app/view/home_jadwal.dart';
import 'package:smkidn_app/view/home_siswa.dart';
import 'package:smkidn_app/view/profile.dart';

class SetupScreen extends StatefulWidget {
  static const page = '/setup';

  @override
  _SetupScreenState createState() => _SetupScreenState();
}

class _SetupScreenState extends State<SetupScreen> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget> [
    HomeSiswaScreen(),
    HomeJadwalScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(blurRadius: 20, color: Colors.grey.withOpacity(1.0))
        ]),
         child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
            child: GNav(
              gap: 3,
              activeColor: Colors.white,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 4.0),
              tabBackgroundColor: Colors.deepPurpleAccent,
              duration: Duration(milliseconds: 800),
              tabs: [
                GButton(
                  icon: LineIcons.users,
                  text: 'Siswa',
                ),
                GButton(
                  icon: LineIcons.tasks,
                  text: 'Jadwal',
                ),
                GButton(
                  icon: LineIcons.user,
                  text: 'Profile',
                )
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
