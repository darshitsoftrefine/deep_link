import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Green extends StatelessWidget {
  const Green({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: List.generate(10, (index) => ListTile(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Details(id: index.toString())),
            );
          },
          title: Text("Data $index"),
        ))
      ),
    );
  }
}

class Details extends StatelessWidget {
  Details({super.key, required String id});

  String? id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("You ar on $id"),
      ),
    );
  }
}

