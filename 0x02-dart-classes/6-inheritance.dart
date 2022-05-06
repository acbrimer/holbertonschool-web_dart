import '6-password.dart';

class User {
  late int id;
  late String name;
  late int? age;
  late double? height;
  late Password user_password;

  User(
      {required int id,
      required String name,
      int? age,
      double? height,
      required String user_password}) {
    this.id = id;
    this.name = name;
    this.age = age;
    this.height = height;
    this.user_password = new Password(password: user_password);
  }

  Map toJson() => {
        'id': this.id,
        'name': this.name,
        'age': this.age,
        'height': this.height,
        'user_password': this.user_password.password
      };

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return new User(
        id: userJson['id'],
        name: userJson['name'],
        age: userJson['age'],
        height: userJson['height'],
        user_password: userJson['user_password']);
  }

  String toString() {
    return 'User(id : ${this.id} ,name: ${this.name},  age: ${this.age}, height: ${this.height}, Password: ${this.user_password.isValid()})';
  }
}
