import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:finflow/utils/firebase/model/user_model.dart';
import 'package:finflow/utils/firebase/shared_preference.dart';
import 'package:get/get.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  adduser(UserModal2 user, String userid) async {
    await _db.collection('Users').doc(userid).set(user.toJson());
  }

  maketransaction(UserModal4 user) async {
    final currentUserId = await retrieveData("UserID");
    await _db.collection("${currentUserId}Transtactions").add(user.toJson());
  }

  addgroup(UserModal3 user) async {
    final currentUserId = await retrieveData("UserID");
    await _db.collection("${currentUserId}Groups").add(user.toJson());
  }

  createuser(UserModal user) async {
    final currentUserId = await retrieveData("UserID");
    await _db.collection("${currentUserId}Cards").add(user.toJson());
  }

  Future<List<UserModal>> allcards(String useruid) async {
    final snapshot = await _db.collection(useruid).get();
    final userdata =
        snapshot.docs.map((e) => UserModal.fromSnapshot(e)).toList();
    return userdata;
  }

  Future<List<UserModal2>> getallusers() async {
    final snapshot = await _db.collection("Users").get();
    final userdata =
        snapshot.docs.map((e) => UserModal2.fromSnapshot(e)).toList();
    return userdata;
  }

  Future<List<UserModal3>> getallgroups(String useruid) async {
    final snapshot = await _db.collection(useruid).get();
    final userdata =
        snapshot.docs.map((e) => UserModal3.fromSnapshot(e)).toList();
    return userdata;
  }

  Future<UserModal2> getUserdetails(String uid) async {
    DocumentSnapshot<Map<String, dynamic>> snapshot =
        await FirebaseFirestore.instance.collection("Users").doc(uid).get();

    if (snapshot.exists) {
      return UserModal2.fromSnapshot(snapshot);
    } else {
      throw Exception('User with UID $uid not found');
    }
  }

  Future<List<UserModal4>> getalltransactions(String useruid) async {
    final snapshot = await _db.collection(useruid).get();
    final userdata =
        snapshot.docs.map((e) => UserModal4.fromSnapshot(e)).toList();
    return userdata;
  }

  Future<UserModal3> getGroupDetails(String documentName) async {
    final currentUserId = await retrieveData("UserID");

    final snapshot = await _db
        .collection("${currentUserId}Groups")
        .doc(documentName) // Use doc() with the provided document name
        .get();

    if (snapshot.exists) {
      final userdata = UserModal3.fromSnapshot(snapshot);
      return userdata;
    } else {
      throw Exception("Document not found");
    }
  }
}
