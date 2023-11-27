import 'dart:convert';
import 'dart:core';

List<Shopping> userListFromData(String data) =>
    List<Shopping>.from(jsonDecode(data).map((e) => Shopping.fromJson(e)));

class Shopping {
  late String productName;
  late int cost;
  late String category;
  late Details details;
  late Type type;

  Shopping.fromJson(Map<String, dynamic> json) {
    productName = json["productName"];
    cost = json["cost"];
    category = json["category"];
    details = Details.fromJson(json["details"]);
    type = Type.fromJson(json["type"]);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "productName": productName,
      "cost": cost,
      "category": category,
      "details": details,
      "type": type
    };
    return map;
  }

  @override
  String toString() {
    return "productName $productName\ncost: $cost\ncategory: $category\ndetails: $details\ntype: $type";
  }
}

class Details {
  late String color;
  late String weight;
  late Dimensions dimensions;

  Details.fromJson(Map<String, dynamic> json) {
    color = json["color"];
    weight = json["weight"];
    dimensions = Dimensions.fromJson(json["specs"]);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "color": color,
      "weight": weight,
      "dimensions": dimensions,
    };
    return map;
  }

  @override
  String toString() {
    return "Color: $color\nWeight: $weight\nDimensions: $dimensions";
  }
}

class Dimensions {
  late double length;
  late String width;
  late String height;

  Dimensions.fromJson(Map<String, dynamic> json) {
    length = json["length"];
    width = json["width"];
    height = json["height"];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "length": length,
      "width": width,
      "height": height,
    };
    return map;
  }

  @override
  String toString() {
    return "length: $length\nwidth: $width\nheight: $height";
  }
}

class Type {
  late String name;
  late String comment;
  late List<dynamic> count;
  late String id;

  Type.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    comment = json["comment"];
    count = json["count"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "name": name,
      "comment": comment,
      "count": count,
      "id": id,
    };
    return map;
  }

  @override
  String toString() {
    return "name: $name\ncomment: $comment\ncount: $count\nid: $id";
  }
}
