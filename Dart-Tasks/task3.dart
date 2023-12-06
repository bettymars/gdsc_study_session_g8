import 'dart:async';

class Calculator {
  double add(double num1, double num2) {
    return num1 + num2;
  }

  double subtract(double num1, double num2) {
    return num1 - num2;
  }

  double multiply(double num1, double num2) {
    return num1 * num2;
  }

  double divide(double num1, double num2) {
    if (num2 == 0) {
      throw ZeroDivisionError('Cannot divide by zero');
    }
    return num1 / num2;
  }
}

void main() async {
  var calc = Calculator();
  double result;

  try {
    result = calc.divide(10, 2); // Example: performing division operation
  } catch (e) {
    print('Error: $e');
    return;
  }

  await Future.delayed(Duration(seconds: 5), () {
    print('Result: $result');
  });
}