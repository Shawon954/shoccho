import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoccho/Screen/attendance/views/attendance_view.dart';
import 'package:shoccho/Screen/home/views/home_view.dart';
import 'package:shoccho/Screen/profile/views/profile_view.dart';


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
              backgroundColor: Colors.grey.shade100,
              onTap: _onItemTapped,
              unselectedFontSize: 15,
              showSelectedLabels: false,
              showUnselectedLabels: true,
              iconSize: 20,
              unselectedLabelStyle: TextStyle( fontWeight: FontWeight.w500,
                  fontFamily: 'Gilroy',),
              items: [
                BottomNavigationBarItem(
                    icon: CircleAvatar(
                        backgroundColor: _currentIndex == 0
                            ? Colors.blueAccent
                            : Colors.transparent,
                        radius: 25.r,
                        child:ImageIcon( AssetImage(
                          'assets/navbaricons/atte.png',

                        ),
                          color: _currentIndex == 0 ? Colors.white : Colors.grey,
                          size: _currentIndex == 0? 32:28,
                        ),

            ),label: 'Attendance'
                    ),


                BottomNavigationBarItem(
                    icon: CircleAvatar(
                        backgroundColor: _currentIndex == 1
                            ? Colors.blueAccent
                            : Colors.transparent,
                        radius: 25.r,
                        child: ImageIcon(

                          AssetImage(
                          'assets/navbaricons/home.png',

                        ),
                          color: _currentIndex == 1 ? Colors.white : Colors.grey,
                          size:  _currentIndex == 1? 32:28,
                        ),

                    ),label: 'Home',

                    ),

                BottomNavigationBarItem(
                    icon: CircleAvatar(
                        backgroundColor: _currentIndex == 2
                            ? Colors.blueAccent
                            : Colors.transparent,
                        radius: 25.r,
                        child: ImageIcon( AssetImage(
                          'assets/navbaricons/profile.png',

                        ),
                          color: _currentIndex == 2 ? Colors.white : Colors.grey,
                          size:  _currentIndex == 2? 32:28,
                        ),

                    ),label: 'Profile'
                    ),

              ],
            ),
          ),
        ),

      ),

      body: _pages[_currentIndex],

    );
  }
}
