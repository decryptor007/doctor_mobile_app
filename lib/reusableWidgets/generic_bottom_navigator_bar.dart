import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_4/models/doctor.dart';
class GenericBottomNavigatorBar extends StatefulWidget {
  @override
  _GenericBottomNavigatorBarState createState() => _GenericBottomNavigatorBarState();
}

class _GenericBottomNavigatorBarState extends State<GenericBottomNavigatorBar> {
  int _selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedItem,
      onTap: (index) {
        setState(() {
          _selectedItem = index;
        });
      },
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notification_important_sharp),
          label: 'Notification',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today),
          label: 'Schedule',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_rounded),
          label: 'Profile',
        ),
      ],
    );
  }

}
