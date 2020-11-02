import 'package:firebase_auth/firebase_auth.dart';
import 'package:ComCon/services/pooldata.dart';

class PoolService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future fillForm(String n, String t, String p, String v, String vN, String vS,
      String l) async {
    final user = await _auth.currentUser;
    var name = n;
    var time = t;
    var phone = p;
    var vehical = v;
    var vehicalNum = vN;
    var vehicalSeat = vS;
    var location = l;
    await PoolDatabaseService(uid: user.uid).updatePoolData(
        name, time, phone, vehical, vehicalNum, vehicalSeat, location);
  }
}
