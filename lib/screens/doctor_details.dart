import 'package:flutter/material.dart';
import 'package:flutter_app_4/models/doctor.dart';
import 'package:flutter_app_4/reusableWidgets/generic_app_bar.dart';
import 'package:flutter_app_4/reusableWidgets/generic_bottom_navigator_bar.dart';

class DoctorDetails extends StatelessWidget {
  Doctor doctor;

  DoctorDetails(this.doctor);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: GenericAppBar("Doctor Details")
      ),
      bottomNavigationBar:  GenericBottomNavigatorBar(),
      body: ListView(
        children: [
          Row(
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
                      // Icon(
                      //   Icons.star,
                      //   color: Color(0xffffd500),
                      // ),
                      // Text(
                      //   '4.9',
                      //   style:
                      //       TextStyle(fontSize: 18, color: Color(0x770000000)),
                      // )
                    ],
                  ),
                  Text(
                    doctor.speciality,
                    style: TextStyle(
                        color: Color(0xff07da5f),
                        fontSize: 20,
                        fontStyle: FontStyle.italic),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
              ),
              Text(
                "Short Description",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontStyle: FontStyle.italic),
              )
            ]
          ),
          const SizedBox(height: 5),
          Row(
          children: [
          Padding(
          padding: const EdgeInsets.all(10.0),
            ),
            Flexible(child:Text(
            doctor.shortDescription,
            style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontStyle: FontStyle.italic),
            ))
            ],
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
              ),
              Flexible(child:Text(
                "Location",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontStyle: FontStyle.italic),
              ))
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
              ),
              Icon(
                Icons.location_on_outlined,
                color: Colors.grey,
              ),
              Flexible(child:Text(
                doctor.address,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontStyle: FontStyle.italic),
              ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
              ),
              Image.asset(
                'assets/images/9.png',
                height:250,
                width:250
              )

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
              ),
              FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35.0),
                    side: BorderSide(color: Color(0xff07da5f))),
                color: Color(0xff07da5f),
                textColor: Colors.white,
                padding: EdgeInsets.all(20.0),
                onPressed: () {},
                child: Text(
                  "Request",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),

            ],
          ),




        ],
      ),
    );
  }

}
