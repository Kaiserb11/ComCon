import 'package:firebase_auth/firebase_auth.dart';
import 'package:ComCon/services/cabdata.dart';

class CabService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future fillForm(String n, String t, String p, String vS,
      String l) async {
    final user = await _auth.currentUser;
    var name = n;
    var time = t;
    var phone = p;
    var vehicalSeat = vS;
    var location = l;
    await CabDatabaseService(uid: user.uid).updateCabData(
        name, time, phone, vehicalSeat, location);
  }
}
