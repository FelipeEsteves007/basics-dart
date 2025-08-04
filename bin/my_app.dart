import 'dart:io';

void main() {
  print("Hello, my name is Dart, what's your name?");
  var enter = stdin.readLineSync();
  print("Hello, $enter.");
}
