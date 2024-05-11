import 'dart:io';

void main() {
  final Map<String, String> users = {}; 

  while (true) {
    print('Enter 1 to Login, 2 to Register, or 3 to Exit: ');
    String choice = stdin.readLineSync() ?? '';
    switch (choice.trim()) {
      case '1':
        login(users);
        break;
      case '2':
        register(users);
        break;
      case '3':
        print('Exiting...');
        return;
      default:
        print('Invalid choice. Please try again.');
    }
  }
}

void login(Map<String, String> users) {
  print('Enter your email: ');
  String email = stdin.readLineSync() ?? '';
  print('Enter your password: ');
  String password = stdin.readLineSync() ?? '';

  if (users.containsKey(email) && users[email] == password) {
    print('Login successful!');
  } else {
    print('Invalid email or password. Please try again.');
  }
}

void register(Map<String, String> users) {
  print('Enter your email: ');
  String email = stdin.readLineSync() ?? '';
  print('Enter your password: ');
  String password = stdin.readLineSync() ?? '';

  if (users.containsKey(email)) {
    print('User with this email already exists. Please try again with a different email.');
  } else {
    users[email] = password;
    print('Registration successful!');
  }
}
