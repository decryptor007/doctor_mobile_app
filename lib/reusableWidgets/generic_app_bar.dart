import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_4/models/doctor.dart';

class GenericAppBar extends StatelessWidget {
  String title;
  GenericAppBar(this.title);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(this.title),
      centerTitle: true,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.workspaces_filled),
          onPressed: () {},
          color: Colors.white,
        )
      ],
    );
  }

}
