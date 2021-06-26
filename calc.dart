import 'dart:convert';
import 'dart:io';
import 'dart:math';

class Calc {
  // instance fiels
  double num1;
  double num2;

  // constructor
  Calc(double firstNum, double secondNum) {
    this.num1 = firstNum;
    this.num2 = secondNum;
  }

  //class methods
  double add(double firstNum, double secondNum) {
    return firstNum + secondNum;
  }

  double subtract(double firstNum, double secondNum) {
    return firstNum - secondNum;
  }

  double multiply(double firstNum, double secondNum) {
    return firstNum * secondNum;
  }

  double expontentiate(double firstNum, double secondNum) {
    // Math.pow returns a double, so use typecasting to account for large numbers

    double exponentProd = pow(firstNum, secondNum);

    return exponentProd;
  }

  double divide(double firstNum, double secondNum) {
    return firstNum / secondNum;
  }

  static void backToMainMenu() {
    print("\nReturning to HQ....\n");
    wholeThing();
  }

  static void wholeThing() {
    // TODO : adding a Delay

    print("""
        \nWelcome to the Darculator ⚡!
        \n===============================
        \nThis calculator performs mathematcal operations 👨🏾‍💻.
        \nThis calculator was made in association with jeanluc 🌠. 
        \nPlease type your first digit \nType 'exit' to Stop the program at anytime!❌ \n""");

    String firstInput =
        stdin.readLineSync(encoding: Encoding.getByName('utf-8'));
    firstInput = firstInput.trim();
    double firstNum = 0;

    if (firstInput == "exit") {
      exit(0);
    } else {
      firstNum = double.parse(firstInput);
    }

    print("\nGreat! Now input your second digit.\n");

    String secondInput =
        stdin.readLineSync(encoding: Encoding.getByName('utf-8'));
    secondInput = secondInput.trim();
    double secondNum = 0;

    if (secondInput == "exit") {
      exit(0);
    } else {
      secondNum = double.parse(secondInput);
    }

    Calc calc1 = new Calc(firstNum, secondNum);

    print("""\nAwesome! Now, choose the formulae you want🔮.
    \nType + for addition ➕
    \nType - for subtraction ➖
    \nType * for multiplication ✖️
    \nType ** to raise the first number to the power of the second 🤷🏾‍♂️
    \nType / to divide ➗""");

    String operator = stdin.readLineSync(encoding: Encoding.getByName("utf-8"));
    operator = operator.trim();

    switch (operator) {
      case "+":
        print(
            "${calc1.num1} plus ${calc1.num2} equals = ${calc1.add(firstNum, secondNum)}");
        backToMainMenu();
        break;
      case "-":
        print(
            "${calc1.num1} minus ${calc1.num2} equals = ${calc1.subtract(firstNum, secondNum)}");
        backToMainMenu();
        break;
      case "*":
        print(
            "${calc1.num1} multiplied by ${calc1.num2} equals = ${calc1.multiply(firstNum, secondNum)}");
        backToMainMenu();
        break;
      case "**":
        print(
            "${calc1.num1} raised to the power of ${calc1.num2} equals = ${calc1.expontentiate(firstNum, secondNum)}");
        backToMainMenu();
        break;
      case "/":
        print(
            "${calc1.num1} divided by ${calc1.num2} equals = ${calc1.divide(firstNum, secondNum)}");
        backToMainMenu();
        break;
      case "exit":
        exit(0);
        break;
      default:
        print("ERROR:Bad expression...🌋");
        backToMainMenu();
        break;
    }
  }
}
