void main(List<String> args) {
  /*
  Write Your code below 
   */
  String errorMessage =
      'Uncaught Error: Assertion failed: "The score must be bigger or equal to 80';
  try {
    int i = int.parse(args[0]);
    if (i >= 80) {
      print('You Passed');
    } else {
      print(errorMessage);
    }
  } catch (e) {
    print(errorMessage);
  }
}
