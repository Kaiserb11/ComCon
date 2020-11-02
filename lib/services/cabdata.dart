import 'package:cloud_firestore/cloud_firestore.dart';

class CabDatabaseService {

  final String uid;
  CabDatabaseService({ this.uid });

  final CollectionReference cabData = FirebaseFirestore.instance.collection('Cabs');

  Future<void> updateCabData(String name, String time, String phone, String vehicalSeat, String location) async {
    return await cabData.doc(uid).set({
      'name': name,
      'time': time,
      'phone': phone,
      'vehicalSeat': vehicalSeat,
      'location': location,
    });
  }

}