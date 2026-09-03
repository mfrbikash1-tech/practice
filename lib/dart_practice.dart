import 'dart:io';

void main(List<String> args) {
  print("Enter Your Name: ");
  String? name =stdin.readLineSync();
  print("Your Name is $name");
  String age =stdin.readLineSync()!;
  print("Your Age is $age");
  String email =stdin.readLineSync()!;
  print("Your email is $email");
}