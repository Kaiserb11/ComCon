import 'package:flutter/material.dart';
import 'package:ComCon/constant.dart';

class DetailPagecab extends StatefulWidget {
  String name;
  String time;
  String location;
  String phone;
  String vehicalSeat;

  DetailPagecab(this.name, this.time, this.location, this.phone, this.vehicalSeat);
  @override
  State<StatefulWidget> createState() {
    return DetailPagecabState(this.name, this.time, this.location, this.phone, this.vehicalSeat);
  }
}

class DetailPagecabState extends State<DetailPagecab> {
  String name;
  String time;
  String location;
  String phone;
  String vehicalSeat;
  DetailPagecabState(this.name, this.time, this.location, this.phone, this.vehicalSeat);

  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: kBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Cab Details :",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
                color: kTitleTextColor,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Cab locaiton : ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: kTitleTextColor,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              location,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: kTitleTextColor,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "User's Name: ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: kTitleTextColor,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: kTitleTextColor,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Cab Time : ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: kTitleTextColor,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              time,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: kTitleTextColor,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Cab User Number : ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: kTitleTextColor,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ), 
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              phone,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: kTitleTextColor,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Pool User Vehical Seat Capacity : ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: kTitleTextColor,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              vehicalSeat,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: kTitleTextColor,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: RaisedButton(
              child: Text(
                'Book',
                style: TextStyle(color: Colors.blue, fontSize: 16),
              ),
              onPressed: () {
                  {
                  Navigator.pop(context);
                }
              },
            ))
        ],
      ),
    );
  }
}
