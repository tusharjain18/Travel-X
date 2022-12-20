import 'package:flutter/material.dart';

class UserView extends StatefulWidget {
  const UserView({super.key});

  @override
  State<UserView> createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('User'),
        ),
        body: Center(
            child: Text(
          'User',
          style: TextStyle(fontSize: 60),
        )),
      );
}
