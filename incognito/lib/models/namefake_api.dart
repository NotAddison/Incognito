// To parse this JSON data, do
//
//     final namefake = namefakeFromJson(jsonString);

import 'dart:convert';

Namefake namefakeFromJson(String str) => Namefake.fromJson(json.decode(str));

String namefakeToJson(Namefake data) => json.encode(data.toJson());

class Namefake {
  Namefake({
    required this.name,
    required this.address,
    required this.latitude,
    required this.longitude,
    required this.maidenName,
    required this.birthData,
    required this.phoneH,
    required this.phoneW,
    required this.emailU,
    required this.emailD,
    required this.username,
    required this.password,
    required this.domain,
    required this.useragent,
    required this.ipv4,
    required this.macaddress,
    required this.plasticcard,
    required this.cardexpir,
    required this.bonus,
    required this.company,
    required this.color,
    required this.uuid,
    required this.height,
    required this.weight,
    required this.blood,
    required this.eye,
    required this.hair,
    required this.pict,
    required this.url,
    required this.sport,
    required this.ipv4Url,
    required this.emailUrl,
    required this.domainUrl,
  });

  String name;
  String address;
  double latitude;
  double longitude;
  String maidenName;
  DateTime birthData;
  String phoneH;
  String phoneW;
  String emailU;
  String emailD;
  String username;
  String password;
  String domain;
  String useragent;
  String ipv4;
  String macaddress;
  String plasticcard;
  String cardexpir;
  int bonus;
  String company;
  String color;
  String uuid;
  int height;
  double weight;
  String blood;
  String eye;
  String hair;
  String pict;
  String url;
  String sport;
  String ipv4Url;
  String emailUrl;
  String domainUrl;

  factory Namefake.fromJson(Map<String, dynamic> json) => Namefake(
        name: json["name"],
        address: json["address"],
        latitude: json["latitude"].toDouble(),
        longitude: json["longitude"].toDouble(),
        maidenName: json["maiden_name"],
        birthData: DateTime.parse(json["birth_data"]),
        phoneH: json["phone_h"],
        phoneW: json["phone_w"],
        emailU: json["email_u"],
        emailD: json["email_d"],
        username: json["username"],
        password: json["password"],
        domain: json["domain"],
        useragent: json["useragent"],
        ipv4: json["ipv4"],
        macaddress: json["macaddress"],
        plasticcard: json["plasticcard"],
        cardexpir: json["cardexpir"],
        bonus: json["bonus"],
        company: json["company"],
        color: json["color"],
        uuid: json["uuid"],
        height: json["height"],
        weight: json["weight"].toDouble(),
        blood: json["blood"],
        eye: json["eye"],
        hair: json["hair"],
        pict: json["pict"],
        url: json["url"],
        sport: json["sport"],
        ipv4Url: json["ipv4_url"],
        emailUrl: json["email_url"],
        domainUrl: json["domain_url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "address": address,
        "latitude": latitude,
        "longitude": longitude,
        "maiden_name": maidenName,
        "birth_data":
            "${birthData.year.toString().padLeft(4, '0')}-${birthData.month.toString().padLeft(2, '0')}-${birthData.day.toString().padLeft(2, '0')}",
        "phone_h": phoneH,
        "phone_w": phoneW,
        "email_u": emailU,
        "email_d": emailD,
        "username": username,
        "password": password,
        "domain": domain,
        "useragent": useragent,
        "ipv4": ipv4,
        "macaddress": macaddress,
        "plasticcard": plasticcard,
        "cardexpir": cardexpir,
        "bonus": bonus,
        "company": company,
        "color": color,
        "uuid": uuid,
        "height": height,
        "weight": weight,
        "blood": blood,
        "eye": eye,
        "hair": hair,
        "pict": pict,
        "url": url,
        "sport": sport,
        "ipv4_url": ipv4Url,
        "email_url": emailUrl,
        "domain_url": domainUrl,
      };
}
