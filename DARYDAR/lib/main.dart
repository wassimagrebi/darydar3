import 'package:DARYDAR/SignupPage.dart';
import 'package:DARYDAR/home_page.dart';
import 'package:DARYDAR/models/cart.dart';
import 'package:DARYDAR/nav_bar.dart';
import 'package:DARYDAR/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
    create: (context) => Cart(),
    child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
          
  
          home: nav_bar(),
          
    );
 
  }
}
