import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  static String routeName = 'details';
  static String routePath = '/details'; // Define route path

  @override
  Widget build(BuildContext context) {
    // Retrieve arguments passed from navigation
    final Map<String, dynamic> args =
    ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      appBar: AppBar(title: Text(args['title'] ?? "Details")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(args['images'][0]), // Display image
            SizedBox(height: 10),
            Text(
              args['title'],
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 10),
            Text(
              args['descriptions'][0],
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
