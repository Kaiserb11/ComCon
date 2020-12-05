import 'package:ComCon/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:ComCon/constant.dart';
import 'package:flutter/rendering.dart';
import 'package:ComCon/pages/widgets/cabstream.dart';
import 'package:flutter_svg/svg.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Current extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: StreamBuilder(
            stream: FirebaseFirestore.instance.collection('statCollection').snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) return Text('...');

              return Column(
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
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      "Your Current \nCab / Pools :",
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
                  Expanded(
                    child: Container(
                      child: CabStream(),
                    ),
                  )
                ],
              );
            }));
  }
}
