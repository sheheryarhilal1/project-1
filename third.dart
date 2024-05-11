import 'dart:io';

void main() {
  List<String> doctors = [
    'Dr. WAQAR (Cardiologist)',
    'Dr. ANAS (Pediatrician)',
    'Dr. SAAD (Dermatologist)',
    'Dr.BILAL (Orthopedic)',
    'Dr. OWAIS (Gynecologist)'
  ];
  print('Available doctors:');
  for (int i = 0; i < doctors.length; i++) {
    print('${i + 1}. ${doctors[i]}');
  }
  print('Select a doctor by entering the corresponding number:');
  int selectedIndex = int.parse(stdin.readLineSync() ?? '0');
  if (selectedIndex >= 1 && selectedIndex <= doctors.length) {
    print('You have selected: ${doctors[selectedIndex - 1]}');
  } else {
    print('Invalid selection. Please try again.');
  }
}
