import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:market_s/pages/start_Page.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
     SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
       statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark),);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GrecRoy',
      theme: ThemeData(
        
        primarySwatch: Colors.green,
      ),
      home: const startPage(),
    );
  }
}
