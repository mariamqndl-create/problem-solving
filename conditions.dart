import 'dart:io';

void main() {
  grade();
  evenNumbers();
  weekdays();
}

void grade() {
  print("Enter grade (0-100):");
  int grade = int.parse(stdin.readLineSync()!);

  if (grade >= 90 && grade <= 100) {
    print("A");
  } else if (grade >= 80 && grade <= 89) {
    print("B");
  } else if (grade >= 70 && grade <= 79) {
    print("C");
  } else {
    print("F");
  }
}

void evenNumbers() {
  print("Even numbers from 1 to 10:");
  for (int i = 1; i <= 10; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
}

void weekdays() {
  print("Enter a number (1-7):");
  int day = int.parse(stdin.readLineSync()!);

  switch (day) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    case 4:
      print("Thursday");
      break;
    case 5:
      print("Friday");
      break;
    case 6:
      print("Saturday");
      break;
    case 7:
      print("Sunday");
      break;
    default:
      print("Invalid number! Please enter 1-7");
  }
}
