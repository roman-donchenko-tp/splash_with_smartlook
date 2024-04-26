import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  // Preserve splash screen until initialization finishes
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // simulate long initialization
  await Future.delayed(const Duration(seconds: 5));

  // Remove splash screen and show main screen
  FlutterNativeSplash.remove();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      home: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Text('Home Page', style: Theme.of(context).textTheme.titleLarge),
      ),
    );
  }
}
