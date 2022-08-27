import 'package:cloud_firestore/cloud_firestore.dart';


class FireStoreMethods{

final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> deletePost(String postId) async {
    String res = "Some error occurred";
    try {
      await _firestore.collection('posts').doc(postId).delete();
      res = 'success';
    } catch (err) {
      res = err.toString();
    }
    return res;
  }
  }
  
