import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {

  final String uid;
  DatabaseService({ this.uid });

  // collection reference
  final CollectionReference brewCollection = FirebaseFirestore.instance.collection('Users');

  Future<void> updateUserData(String name, String vehicalType, String vehicalModel, String vehicalColor, String vehicalPlate, int phoneNo, int sysId, String branch,) async {
    return await brewCollection.doc(uid).set({
      'name': name,
      'vehicalType': vehicalType,
      'vehicalModel': vehicalModel,
      'vehicalColor': vehicalColor,
      'vehicalPlate': vehicalPlate,
      'phoneNo': phoneNo,
      'sysId': sysId,
      'branch': branch,
    });
  }

}