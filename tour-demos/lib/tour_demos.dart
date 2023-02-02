import 'dart:math';

var rng = Random();

int calculate() {
  return 6 * 7;
}

int mockInt() {
  return 42;
}

// Define a function.
void printInteger(int aNumber) {
  print('The number is $aNumber.'); // Print to console.
}

int countLines() {
  return rng.nextInt(1000);
}

bool randomBool() {
  return rng.nextBool();
}
