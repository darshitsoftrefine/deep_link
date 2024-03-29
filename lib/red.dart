import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class Red extends StatefulWidget {
  const Red({super.key});

  @override
  State<Red> createState() => _RedState();
}

class _RedState extends State<Red> {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return Scaffold(
        body: Center(
          child: Column(
            children: [

            ],
          ),
        ),
    );
  }
}


