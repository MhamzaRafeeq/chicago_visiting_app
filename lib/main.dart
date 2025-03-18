import 'package:chicago_site_seeing/pages/visit_details.dart';
import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/details.dart'; // Import the details screen
import 'theme/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chicago Site Seeing App',
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: '/home', // Set initial route
      routes: {
        '/home': (context) => HomeScreen(),
        '/details': (context) => ItemDetails(), // Define details page
        '/visit': (context)=>VisitDetails(),
      },
    );
  }
}
