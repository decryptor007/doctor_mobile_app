import 'package:flutter/material.dart';
import 'package:flutter_app_4/models/doctor.dart';
import 'package:flutter_app_4/screens/doctor_details.dart';
import 'package:flutter_app_4/reusableWidgets/generic_app_bar.dart';
import 'package:flutter_app_4/reusableWidgets/generic_bottom_navigator_bar.dart';


class DoctorList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Color(0xff07da5f),
      ),
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: GenericAppBar("Doctor List")
      ),
      bottomNavigationBar:  GenericBottomNavigatorBar(),
      body: ListView(
          children: doctors.map((e) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: size.width,
            height: size.height / 5,
            // color: Colors.blue,
            child: doctorCard(context,e),
          ),
        );
      }).toList()),
    );
  }

  Widget doctorCard(BuildContext context,Doctor doctor) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => DoctorDetails(doctor)));

      },
      child: Card(
        child: Row(
          children: [
            // Image.asset('assets/images/1.jpg'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                // child: Image.asset('assets/images/1.jpg'),
                backgroundImage: AssetImage(doctor.urlPhoto),
                radius: 65,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      doctor.name,
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                    Icon(
                      Icons.star,
                      color: Color(0xffffd500),
                    ),
                    Text(
                      '4.9',
                      style: TextStyle(fontSize: 18, color: Color(0x770000000)),
                    )
                  ],
                ),
                Text(
                  doctor.speciality,
                  style: TextStyle(
                      color: Color(0xff07da5f),
                      fontSize: 20,
                      fontStyle: FontStyle.italic),
                ),
                Row(
                  children: [
                    Icon(Icons.add_location),
                    Text(
                      doctor.address,
                      style: TextStyle(fontSize: 18, color: Color(0x770000000)),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

}
