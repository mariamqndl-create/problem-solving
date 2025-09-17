void main() {
  // -------- Part 1: Lists --------
  var list = [10, 20, 30, 40];

  print("Using for-in loop:");
  for (var item in list) {
    print(item);
  }

  print("\nUsing forEach (element * 2):");
  list.forEach((element) {
    print(element * 2);
  });

  print("\nUsing spread operator:");
  var newList = [...list, 50, 60];
  print(newList);

  // -------- Part 2: Maps --------
  var student = {'name': 'Ali', 'age': 22, 'grade': 'A'};

  print("\nPrinting all values in Map:");
  student.forEach((key, value) {
    print(value);
  });

  // Add new key
  student['city'] = 'Cairo';

  // Update grade
  student['grade'] = 'B';

  print("\nUpdated Map:");
  print(student);
}
