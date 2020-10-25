import 'package:cloud_firestore/cloud_firestore.dart';

class PoolDatabaseService {

  final String uid;
  PoolDatabaseService({ this.uid });

  final CollectionReference poolData = FirebaseFirestore.instance.collection('Pools');

  Future<void> updatePoolData(String name, String time, String phone, String vehical, String vehicalNum, String vehicalSeat, String location) async {
    return await poolData.doc(uid).set({
      'name': name,
      'time': time,
      'phone': phone,
      'vehical': vehical,
      'vehicalNum': vehicalNum,
      'vehicalSeat': vehicalSeat,
      'location': location,
    });
  }

}