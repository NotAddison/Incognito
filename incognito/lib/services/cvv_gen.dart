import 'dart:math';

class CVV {
  int GenerateCVV(int length) {
    Random random = new Random();
    if (length < 4) {
      return random.nextInt(999) + 100;
    }
    return random.nextInt(9999) + 1000;
  }
}
