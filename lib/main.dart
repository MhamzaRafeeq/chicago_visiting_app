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
      initialRoute: HomeScreen.routePath, // Set initial route
      routes: {
        HomeScreen.routePath: (context) => HomeScreen(),
        ItemDetails.routePath: (context) => ItemDetails(), // Define details page
      },
    );
  }
}
