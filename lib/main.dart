import 'package:fee_bus/routes/routes_manager.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouterManager.onGenerateRoute,
        initialRoute: RouterManager.loadingPage,
        theme: ThemeData(
            // primarySwatch: Colors.blue,
            ));
  }
}
