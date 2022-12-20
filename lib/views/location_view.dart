import 'package:flutter/material.dart';

class LocationView extends StatelessWidget {
  const LocationView({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Location'),
        ),
        body: const Center(
            child: Text(
          'Location',
          style: TextStyle(fontSize: 60),
        )),
      );
}
