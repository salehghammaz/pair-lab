import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapp/log_in.dart';
import 'package:myapp/read.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color red = Colors.red;
  Color blue = Colors.blue;
  Color green = Colors.green;
  DocumentReference<Map<String, dynamic>> read = FirebaseFirestore.instance
      .collection('users')
      .doc(FirebaseAuth.instance.currentUser!.uid);
  String mood = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          ElevatedButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>Log_in()));
              },
              child: Text("Log Out"))
        ],
      ),
      body: FutureBuilder(
        future: read.get(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return Center(
            child: Container(
                color: snapshot.data!["color"] == "red"
                    ? red
                    : snapshot.data!["color"] == "blue"
                        ? blue
                        : green,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      child: RadioListTile(
                        title: Text("Angry"),
                        value: 'angry',
                        groupValue: mood,
                        onChanged: (value) {
                          setState(() {
                            mood = value!;
                          });
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => Read(
                                      color: snapshot.data!["color"],
                                      mood: mood)));
                        },
                      ),
                    ),
                    Card(
                      child: RadioListTile(
                        title: Text("Peaceful"),
                        value: 'peaceful',
                        groupValue: mood,
                        onChanged: (value) {
                          setState(() {
                            mood = value!;
                          });
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => Read(
                                      color: snapshot.data!["color"],
                                      mood: mood)));
                        },
                      ),
                    ),
                    Card(
                      child: RadioListTile(
                        title: Text("Depressed"),
                        value: 'depressed',
                        groupValue: mood,
                        onChanged: (value) {
                          setState(() {
                            mood = value!;
                          });
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => Read(
                                      color: snapshot.data!["color"],
                                      mood: mood)));
                        },
                      ),
                    ),
                  ],
                )),
          );
        },
      ),
    );
  }
}
