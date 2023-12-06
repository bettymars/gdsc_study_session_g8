import 'dart:async';

class Calculator {
  double add(double num1, double num2) {
    return (num1 + num2);
  }

  double subtract(double num1, double num2) {
    return (num1 - num2);
  }

  double multiply(double num1, double num2) {
    return (num1 * num2);
  }

  double divide(double num1, double num2) {
    if (num2 == 0) {
      throw ZeroDivisionError('Cannot divide by zero.');
    }
    return (num1 / num2);
  }
}

void main() async {
  Calculator calculator = Calculator();

  var num1, num2;
  print('Enter first number: ');
  num1 = double.parse(stdin.readLineSync()!);
  print('Enter second number: ');
  num2 = double.parse(stdin.readLineSync()!);

  double result;
  try {
    result = calculator.divide(num1, num2);
    // Wait for 5 seconds
    await Future.delayed(const Duration(seconds: 5));
    print('Result after 5-second delay: $result');
  } on ZeroDivisionError catch (e) {
    print('Error: ${e.toString()}');
  }
}
