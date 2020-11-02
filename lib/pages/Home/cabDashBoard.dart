import 'package:ComCon/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:ComCon/constant.dart';
import 'package:ComCon/pages/widgets/searchbar.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ComCon/pages/widgets/cabstream.dart';

class HomeCab extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
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
              "Find Your Desired\nCab Pools :",
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
              "Active Cab Pools",
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
          Expanded(
            child: Container(
              child: CabStream(),
            ),
          )
        ],
      ),
    );
  }
}
