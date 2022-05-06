class Password {
  late String password;

  bool isValid() {
    bool validLength = this.password.length >= 8 && this.password.length <= 16;
    bool hasCap = this.password.contains(new RegExp(r'[A-Z]'));
    bool hasLower = this.password.contains(new RegExp(r'[a-z]'));
    bool hasNumber = this.password.contains(new RegExp(r'[0-9]'));

    return validLength && hasNumber && hasCap && hasLower;
  }

  String toString() {
    return "Your Password is: ${this.password}";
  }
}
