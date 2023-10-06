import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () async{ await FirebaseAuth.instance.signOut();
            },
            icon:  const Icon(
              Icons.login,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/background/bg_search.png",
            width: 390,
          ),
        ],
      ),
    );
  }
}
