import 'dart:convert';

class User {
  late String name;
  late int? age;
  late double? height;

  User({required String name, int? age, double? height}) {
    this.name = name;
    this.age = age;
    this.height = height;
  }

  Map toJson() => {'name': this.name, 'age': this.age, 'height': this.height};
}
