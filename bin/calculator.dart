import 'dart:io';

void main() {
  double numberOne = 0;
  double numbertwo = 0;
  String operation = "";

  void addition() {
    print(numberOne + numbertwo);
  }

  void subtraction() {
    print(numberOne - numbertwo);
  }

  void division() {
    print(numberOne / numbertwo);
  }

  void multiplication() {
    print(numberOne * numbertwo);
  }

 void calculate() {
    switch (operation) {
      case "+":
        addition();

      case "-":
        subtraction();

      case "/":
        division();

      case "*":
        multiplication();

        break;
    }
  }

  print("Digite o primeiro valor: ");

  String? enter = stdin.readLineSync();

  if (enter != null) {
    if (enter != "") {
      numberOne = double.parse(enter);
    }
  }

 print("Digite uma operação (+,-,*,/): ");

  enter = stdin.readLineSync();
  if (enter != null) {
    operation = enter;
  }

  print("Digite o segundo valor: ");

  enter = stdin.readLineSync();
  if (enter != null) {
    if (enter != "") {
      numbertwo = double.parse(enter);
    }
  }
print("O resultado da operação é: ");
calculate();

}
