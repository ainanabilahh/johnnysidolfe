// To parse this JSON data, do
//
//     final idol = idolFromJson(jsonString);

import 'dart:convert';

List<Idol> idolFromJson(String str) => List<Idol>.from(json.decode(str).map((x) => Idol.fromJson(x)));

String idolToJson(List<Idol> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Idol {
    Idol({
        this.name,
        this.url,
    });

    String name;
    String url;

    factory Idol.fromJson(Map<String, dynamic> json) => Idol(
        name: json["name"],
        url: json["url"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
    };
}
