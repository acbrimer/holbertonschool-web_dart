class Password {
  late String _password;

  Password({required String password}) {
    this._password = password;
  }

  bool isValid() {
    bool validLength =
        this._password.length >= 8 && this._password.length <= 16;
    bool hasCap = this._password.contains(new RegExp(r'[A-Z]'));
    bool hasLower = this._password.contains(new RegExp(r'[a-z]'));
    bool hasNumber = this._password.contains(new RegExp(r'[0-9]'));

    return validLength && hasNumber && hasCap && hasLower;
  }

  String toString() {
    return "Your Password is: ${this._password}";
  }
}
