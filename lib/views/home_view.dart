import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:notes/constants/routes.dart';

import '../main.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          PopupMenuButton<MenuAction>(
            onSelected: (value) async {
              switch (value) {
                case MenuAction.logout:
                  final shouldLogout = await showLogOutDialog(context);
                  if (shouldLogout) {
                    await FirebaseAuth.instance.signOut();
                    // ignore: use_build_context_synchronously
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      loginRoute,
                      (_) => false,
                    );
                  }
              }
            },
            itemBuilder: (context) {
              return [
                const PopupMenuItem<MenuAction>(
                  value: MenuAction.logout,
                  child: Text('Log Out'),
                ),
              ];
            },
          )
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Column(children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 27,
                backgroundImage: AssetImage("assets/travel.png"),
              ),
              const SizedBox(
                width: 15,
              ),
              RichText(
                  text: const TextSpan(
                      text: "Hi",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                      children: [
                    TextSpan(
                        text: ",Traveller",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ))
                  ]))
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Explore new destination",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Material(
            borderRadius: BorderRadius.circular(100),
            elevation: 5,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Search",
                          prefixIcon: Icon(Icons.search),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    const CircleAvatar(
                      radius: 22,
                      backgroundColor: Colors.yellow,
                      child: Icon(
                        Icons.sort_by_alpha_sharp,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ]),
      )),
    );
  }
}
