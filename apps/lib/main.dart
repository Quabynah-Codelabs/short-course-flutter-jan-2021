import 'package:apps/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/all.dart';

/// entry point of application
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// load environment variables
  await load(fileName: '.env');

  runApp(ProviderScope(child: NewsApp()));
}
