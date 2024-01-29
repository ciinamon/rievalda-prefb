import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:rievalda_prefb/app.dart';
import 'package:rievalda_prefb/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    const MyApp(),
  );
}
