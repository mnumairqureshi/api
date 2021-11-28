import 'dart:async';
import 'dart:html';

import 'package:api/model/home_model.dart';
import 'package:api/services/home_services.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("api Function"),
        ),
        body: FutureBuilder(
          future: getuser(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return const Text("******************No******************");
            } else {
              return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Text(snapshot.data[index].id.toString()),
                      title: Text(snapshot.data[index].name),
                      subtitle: Text(snapshot.data[index].username),
                      // subtitle: Text(snapshot.data[index].email),
                    );
                  });
            }
          },
        ));
  }
}
