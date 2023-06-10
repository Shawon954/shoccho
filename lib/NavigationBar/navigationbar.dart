import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoccho/Screen/home/views/home_view.dart';
import 'package:shoccho/attendance/views/attendance_view.dart';
import 'package:shoccho/profile/views/profile_view.dart';

class NAVIGATIONBAR extends StatefulWidget {
  const NAVIGATIONBAR({super.key});

  @override
  State<NAVIGATIONBAR> createState() => _NAVIGATIONBARState();
}

class _NAVIGATIONBARState extends State<NAVIGATIONBAR> {
  int _currentIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  List _pages = [
    ATTENVIEW(),
    HOMEVIEW(),
    PROFILEVIEW(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.only(left: 30).w,
          height: 80,
          width: 350,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
                topRight: Radius.circular(60),
                topLeft: Radius.circular(60),
                bottomRight: Radius.circular(60)).r,
            child: BottomNavigationBar(
              currentIndex: _currentIndex,
              backgroundColor: Colors.white,
              onTap: _onItemTapped,
              selectedFontSize: 14,
              showSelectedLabels: false,
              showUnselectedLabels: true,
              iconSize: 20,

              items: [
                BottomNavigationBarItem(
                    icon: CircleAvatar(
                        backgroundColor: _currentIndex == 0
                            ? Colors.blueAccent
                            : Colors.transparent,
                        radius: 25.r,
                        child: Icon(
                          Icons.calendar_month,
                          color:
                              _currentIndex == 0 ? Colors.white : Colors.grey,
                          size: _currentIndex == 0 ? 35 : 30,
                        )),
                    label: 'Calender'),

                BottomNavigationBarItem(
                    icon: CircleAvatar(
                        backgroundColor: _currentIndex == 1
                            ? Colors.blueAccent
                            : Colors.transparent,
                        radius: 25.r,
                        child: Icon(
                          Icons.home,
                          color:
                              _currentIndex == 1 ? Colors.white : Colors.grey,
                          size: _currentIndex == 1 ? 35 : 30,
                        )),
                    label: 'Home'),
                BottomNavigationBarItem(
                    icon: CircleAvatar(
                        backgroundColor: _currentIndex == 2
                            ? Colors.blueAccent
                            : Colors.transparent,
                        radius: 25.r,
                        child: Icon(
                          Icons.person,
                          color:
                              _currentIndex == 2 ? Colors.white : Colors.grey,
                          size: _currentIndex == 2 ? 35 : 30,
                        )),
                    label: 'profile'),
              ],
            ),
          ),
        ),

      ),

      body: _pages[_currentIndex],

    );
  }
}
