import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:personal_portfolio/marketplace_mobile_list.dart';
import 'package:personal_portfolio/marketplace_mobile_partners.dart';
import 'package:playing_cards/playing_cards.dart';

class Red extends StatefulWidget {
  const Red({super.key});

  @override
  State<Red> createState() => _RedState();
}

class _RedState extends State<Red> {
  List<MarketPlaceMobilePartners> samplePosts = [];

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
              ElevatedButton(onPressed: () {
              },
              child: PlayingCardView(card: PlayingCard(Suit.hearts, CardValue.king))),
              ElevatedButton(onPressed: (){
                getData();
              }, child: Text("Hello")),
            ],
          ),
        ),
    );
  }
}

  Future<List<MarketPlaceList>> getData() async {
    final response = await http.post(Uri.parse("https://coupinos-app.azurewebsites.net/marketplace/mobile/list"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'x-access-token': 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiNjUzZjQzNWMyMThhZjAwMDQ1MmI4YmYwIiwiZW1haWwiOiJnaWFyb2RAeW9wbWFpbC5jb20iLCJyb2xlIjpbIkNlcnRpZmllZFVzZXIiXSwiZmlyc3ROYW1lIjoiR2lhIiwibGFzdE5hbWUiOiJSb2QiLCJpc0RlZmF1bHRJbWFnZSI6dHJ1ZSwiZGVmYXVsdEltYWdlUGF0aCI6Ii91c2VyL2RlZmF1bHRJbWFnZXMvMyIsImlzUmVnaXN0cmF0aW9uQ29tcGxldGUiOmZhbHNlLCJpYXQiOjE3MTEwMDM4NzAsImV4cCI6MTcxMzU5NTg3MH0.dl-2I6k9AP1NQ9U3GPYkDYSg9r-WZtbf-TczNRq9EFI',
      },
      body: jsonEncode(<String, dynamic>{
          "pageSize": 5,
          "page": 0,
          "latitude": "51.338871",
          "longitude": "7.042710",
          "type" : "OMP",
          "radius" :1000,
      }),
    );
    var data1 = jsonDecode(response.body);
    print("Hello $data1");
    print(response.statusCode);
    if(response.statusCode == 200){
      final data = jsonDecode(response.body);
      final List<MarketPlaceList> list = [];
      print(data);

      return list;
    } else {
      throw Exception("HTTP Request Failed");
    }
  }

