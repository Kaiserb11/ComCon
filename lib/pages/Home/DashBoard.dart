import 'package:ComCon/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:ComCon/constant.dart';
import 'package:ComCon/pages/widgets/searchbar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ComCon/pages/widgets/poolcard.dart';

class Home extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal : 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                    icon: SvgPicture.asset('assets/images/menu.svg'),
                    onPressed: null,
                    ),
                    IconButton(
                    icon: SvgPicture.asset('assets/images/profile.svg'),
                    onPressed: () async {
                      await _auth.signOut();
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Find Your Desired\nPools :",
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
                child: SearchBar(),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Active Pools",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kTitleTextColor,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              buildDoctorList(),
            ],
          ),
        ),
      ),
    );
  }


  buildDoctorList() {
  return Padding(
    padding: EdgeInsets.symmetric(
      horizontal: 30,
    ),
    child: Column(
      children: <Widget>[
        PoolCard(
          'Dr. Savitri Sharma',
          'Noida Sector 52',
          '4:30 pm',
          '2',
        ),
        SizedBox(
          height: 20,
        ),
        PoolCard(
          'Harish Singh',
          'Janakpuri West Delhi',
          '6:00 pm',
          '1',
        ),
        SizedBox(
          height: 20,
        ),
        PoolCard(
          'Lokesh Nath',
          'R.K Puram Delhi',
          '5:00 pm',
          '2',
        ),
        SizedBox(
          height: 20,
        ),
                PoolCard(
          'Ram Singh',
          'Noida sector 42',
          '5:15 pm',
          '4',
        ),
        SizedBox(
          height: 20,
        ),
      ],
    ),
  );
}
}
