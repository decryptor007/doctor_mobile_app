import 'package:flutter/material.dart';
import 'package:flutter_app_4/models/doctor.dart';
import 'package:flutter_app_4/reusableWidgets/generic_app_bar.dart';
import 'package:flutter_app_4/reusableWidgets/generic_bottom_navigator_bar.dart';

class TestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: GenericAppBar("Doctor Details")
      ),
      bottomNavigationBar: GenericBottomNavigatorBar(),
    );
  }

}
