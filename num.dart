void main() {
  int num1 = 10;
  int num2 = 5;

  // العمليات الحسابية
  print("Sum: ${num1 + num2}");
  print("Product: ${num1 * num2}");
  print("Difference: ${num1 - num2}");

  // المقارنة
  if (num1 > num2) {
    print("$num1 is greater than $num2");
  } else if (num1 < num2) {
    print("$num2 is greater than $num1");
  } else {
    print("Both are equal");
  }
}
