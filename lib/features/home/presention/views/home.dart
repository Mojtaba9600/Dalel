import 'package:dalel/core/functons/navigation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
              customReplacementNavigate(context, "/SignIn");
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Center(child: Text("Home View")),
    );
  }
}
