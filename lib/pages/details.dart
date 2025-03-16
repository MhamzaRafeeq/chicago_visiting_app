import 'package:flutter/material.dart';

class ItemDetails extends StatefulWidget {
  const ItemDetails({super.key});
  static String routeName = 'details';
  static String routePath = '/details';

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  int index = 0; // Current index

  @override
  Widget build(BuildContext context) {
    // Retrieve arguments passed from navigation
    final Map<String, dynamic> args =
    ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;  

    final List<String> images = args['images'] ?? []; // Ensure non-null
    final List<String> descriptions = args['descriptions'] ?? [];

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            index = (index + 1) % images.length; // Cycle through images safely
          });
        },
        child: Icon(Icons.navigate_next),
      ),
      appBar: AppBar(title: Text(args['title'] ?? "Details", style: Theme.of(context).textTheme.titleLarge,)),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (images.isNotEmpty)
              Hero(
                tag: images[index],
                child: Image.asset(
                  images[index], // Ensure safe access
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              )
            else
              Container(height: 300, color: Colors.grey), // Placeholder if no images

            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                args['title'] ?? "No Title",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),

            SizedBox(height: 10),

            Expanded(
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        softWrap: true,
                        descriptions.isNotEmpty ? descriptions[index] : "No description available",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
