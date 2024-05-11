import 'dart:io';

void main() {
  print('Please provide your personal information:');

  print('Enter your name:');
  String name = stdin.readLineSync() ?? '';

  print('Enter your age:');
  String age = stdin.readLineSync() ?? '';

  print('Enter your gender:');
  String gender = stdin.readLineSync() ?? '';

  print('Enter your address:');
  String address = stdin.readLineSync() ?? '';

  print('Your Personal Information:');
  print('Name: $name');
  print('Age: $age');
  print('Gender: $gender');
  print('Address: $address');
}
