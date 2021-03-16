import 'package:blog_app_project/app/app.dart';

// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fimber/fimber.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// import 'data/entities/entities.dart';

/// continuing from the previous session
/// we will be creating the login and registration screens
/// but first let's complete the home page
///
///
/// flutter packages pub run build_runner build --delete-conflicting-outputs --verbose
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// plant debug tree
  if (!kReleaseMode) {
    Fimber.plantTree(DebugTree());
  }

  /// initialize Firebase SDK
  await Firebase.initializeApp();

  /// one-time shots
  // var response = await FirebaseFirestore.instance.collection("users").get();
  // var docs =
  //     response.docs.map((snapshot) => User.fromSnapshot(snapshot)).toList();
  // Fimber.d('All docs -> $docs');

  /// realtime shots
  // var snapshots = FirebaseFirestore.instance.collection("users").snapshots();
  // snapshots.listen((event) {
  //   var docs =
  //       event.docs.map((snapshot) => User.fromSnapshot(snapshot)).toList();
  //   Fimber.d('All docs -> $docs');
  // });

  runApp(BlogApp());
}
