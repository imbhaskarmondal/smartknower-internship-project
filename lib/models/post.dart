// To parse this JSON data, do
//
//     final post = postFromJson(jsonString);

import 'dart:convert';

List<Post> postFromJson(String str) =>
    List<Post>.from(json.decode(str).map((x) => Post.fromJson(x)));

String postToJson(List<Post> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Post {
  final int? id;
  final String? ename;
  final String? dept;
  final String? salary;
  final String? tax;
  final String? doj;

  Post({
    this.id,
    this.ename,
    this.dept,
    this.salary,
    this.tax,
    this.doj,
  });

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        id: json["id"],
        ename: json["ename"],
        dept: json["dept"],
        salary: json["salary"],
        tax: json["tax"],
        doj: json["doj"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "ename": ename,
        "dept": dept,
        "salary": salary,
        "tax": tax,
        "doj": doj,
      };
}
