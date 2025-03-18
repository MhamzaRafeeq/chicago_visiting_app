import 'package:flutter/material.dart';

class VisitDetails extends StatefulWidget {
  const VisitDetails({super.key});

  @override
  State<VisitDetails> createState() => _VisitDetailsState();
}

class _VisitDetailsState extends State<VisitDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
      ),
      body: Text('data', style: Theme.of(context).textTheme.titleLarge,),
    );
  }
}
