import 'package:flutter/material.dart';
import 'package:ComCon/constant.dart';

class DetailPage extends StatefulWidget {
  String name;
  String time;
  String location;
  String phone;
  String vehical;
  String vehicalNum;
  String vehicalSeat;

  DetailPage(this.name, this.time, this.location, this.phone, this.vehical, this.vehicalNum, this.vehicalSeat);
  @override
  State<StatefulWidget> createState() {
    return DetailPageState(this.name, this.time, this.location, this.phone, this.vehical, this.vehicalNum, this.vehicalSeat);
  }
}

class DetailPageState extends State<DetailPage> {
  String name;
  String time;
  String location;
  String phone;
  String vehical;
  String vehicalNum;
  String vehicalSeat;
  DetailPageState(this.name, this.time, this.location, this.phone, this.vehical, this.vehicalNum, this.vehicalSeat);

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
              "Pool Details :",
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
              "Pool locaiton : ",
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
              "Pool Name: ",
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
              "Pool Time : ",
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
              "Pool User Number : ",
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
              "Pool User Vehical : ",
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
              vehical,
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
              "Pool User Vehical Number : ",
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
              vehicalNum,
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
