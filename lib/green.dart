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
            var param1 = "param$index";
            context.goNamed("sample", pathParameters: {'id1': param1});
          },
          title: Text("Data $index"),
        ))
      ),
    );
  }
}

class Details extends StatelessWidget {
  Details({super.key, this.id1});

  String? id1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("You ar on $id1"),
      ),
    );
  }
}

