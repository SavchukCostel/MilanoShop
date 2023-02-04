import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../models/auth/index.dart';
import '../models/index.dart';

class AuthApi {
  const AuthApi({
    required FirebaseAuth auth,
    required FirebaseFirestore firestore,
    required FirebaseStorage firebaseStorage,
  })  : assert(auth != null),
        assert(firestore != null),
        assert(firebaseStorage != null),
        _auth = auth,
        _firestore = firestore,
        _firebaseStorage = firebaseStorage;

  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;
  final FirebaseStorage _firebaseStorage;

  Future<AppUser> initializeApp() async {
    final User? user = _auth.currentUser;
    final DocumentSnapshot<Map<String, dynamic>> snapshot = await _firestore.doc('users/${user?.uid}').get();
    return AppUser.fromJson(snapshot.data());
  }

  Future<AppUser> login({required String email, required String password}) async {

    final UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
    final DocumentSnapshot<Map<String, dynamic>> snapshot = await _firestore.doc('users/${result.user?.uid}').get();
    return AppUser.fromJson(snapshot.data());
  }

  Future<AppUser> register({
    required String email,
    required String password,
    required String displayName,
    required String photoUrl,
  }) async {
    final UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);

    final AppUser appUser = AppUser((AppUserBuilder b) {
      b
        ..uid = result.user?.uid
        ..email = result.user?.email
        ..displayName = displayName
        ..photoUrl = photoUrl;
    });

    await _firestore.doc('users/${result.user?.uid}').set(appUser.json);
    return appUser;
  }

  Future<String> uploadToStorage(String email) async {
    String photoUrl = '';
    final FileUploadInputElement input = FileUploadInputElement()..accept = 'image/*';
    input.click();
    input.onChange.listen((Event event) {
      final File? file = input.files?.first;
      final FileReader reader = FileReader();
      reader.readAsDataUrl(file!);
      reader.onLoadEnd.listen((ProgressEvent event) async {
        final TaskSnapshot snapshot = await _firebaseStorage.ref().child(email).putBlob(file);
        final String downloadUrl = await snapshot.ref.getDownloadURL(); // imageUrl = downloadUrl;
        photoUrl = downloadUrl;
      });
    });
    return photoUrl;
  }

  Future<void> logout() async {
    await _auth.signOut();
  }
}
