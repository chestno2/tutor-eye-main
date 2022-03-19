import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  User user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
            child: user!=null?Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(user.email),
                Text(user.displayName),
                CircleAvatar(
                  backgroundImage: NetworkImage(user.photoURL),
                  radius: 20,
                )
              ],
            ):const Text('logged in'))),

    );
  }
}
