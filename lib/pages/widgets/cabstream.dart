import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ComCon/constant.dart';
import 'package:ComCon/pages/Home/detail_cab.dart';

class CabStream extends StatefulWidget {
  CabStream();

  @override
  CabStreamState createState() => CabStreamState();
}

class CabStreamState extends State<CabStream> {
  CabStreamState();

  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: null,
      body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('Cabs').snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            return ListView(
              children: snapshot.data.docs.map((document) {
                return Center(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: kOrangeColor.withOpacity(1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: ListTile(
                          title: Text(
                            "Location : ${document['location']}",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            "Name : ${document['name']}\nTime : ${document['time']}\nCapacity : ${document['vehicalSeat']}",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) =>
                                        DetailPagecab(document['name'],document['time'],document['location'],document['phone'],document['vehicalSeat'] )));
                          },
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            );
          }),
    );
  }
}
