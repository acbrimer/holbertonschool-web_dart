void main(List<String> args) {
  /*
  Write Your code below 
   */
  String errorMessage =
      'Uncaught Error: Assertion failed: "The score must be bigger or equal to 80';
  int nb = int.parse(args[0]);
  assert(nb >= 80, errorMessage);
  print('You Passed');
}
