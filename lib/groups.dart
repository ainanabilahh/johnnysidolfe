import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'
as http;

List < Idol > welcomeFromJson(String str) => List < Idol > .from(json.decode(str).map((x) => Idol.fromJson(x)));
String welcomeToJson(List < Idol > data) => json.encode(List < dynamic > .from(data.map((x) => x.toJson())));

Future < Idol > fetchIdol() async {
  final response =
    await http.get('http://192.168.1.101/johnnysidolbe/public/groups');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    final groups = welcomeFromJson(response.body);
    for (var group in groups) return group;
    // groups.forEach((k, v) => print(v));
    // return Idol.fromJson(jsonDecode('{ "member": 5, "name": "Arashi", "url": "arashi.jpg" }'));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Idol {
  Idol({
    this.name,
    this.member,
    this.url,
  });

  String name;
  int member;
  String url;

  factory Idol.fromJson(Map < String, dynamic > json) => Idol(
    name: json["name"],
    member: json["member"],
    url: json["url"],
  );

  Map < String, dynamic > toJson() => {
    "name": name,
    "member": member,
    "url": url,
  };
}

void main() => runApp(IdolGroup());

class IdolGroup extends StatefulWidget {
  IdolGroup({
    Key key
  }): super(key: key);

  @override
  _IdolGroupState createState() => _IdolGroupState();
}

class _IdolGroupState extends State < IdolGroup > {
  Future < Idol > futureIdol;

  @override
  void initState() {
    super.initState();
    futureIdol = fetchIdol();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder < Idol > (
            future: futureIdol,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data.name);
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              // By default, show a loading spinner.
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
