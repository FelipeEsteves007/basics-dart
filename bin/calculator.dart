import 'dart:io';

void main() {
  double numberOne = 0;
  double numbertwo = 0;
  String operation = "";
  String? enter = "";
  List<String> operations = <String>["+", "-", "*", "/"];

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


  void getOperacao(){
    print("Digite uma operação ${operations.toString()} ");
    enter = stdin.readLineSync();
    if (enter != null){
      if (operations.contains(enter)){
        operation = enter!;
      } else {
        print ("Escolha uma operação válida");
        getOperacao();
      }
    }
  }

  print("Digite o primeiro valor: ");

  enter = stdin.readLineSync();

  if (enter != null) {
    if (enter != "") {
      numberOne = double.parse(enter!);
    }
  }

  getOperacao();

  print("Digite o segundo valor: ");

  enter = stdin.readLineSync();
  if (enter != null) {
    if (enter != "") {
      numbertwo = double.parse(enter!);
    }
  }
print("O resultado da operação é: ");
calculate();

}
