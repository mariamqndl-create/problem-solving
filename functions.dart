void main() {
  // Function 1: addNumbers
  addNumbers(5, 7);

  // Function 2: square (arrow syntax)
  print("Square of 4 = ${square(4)}");

  // Function 3: greet (optional parameters)
  greet(); // no name, no city
  greet(name: "Ali"); // name only
  greet(name: "Ali", city: "Cairo"); // name + city
}

// -------- Functions --------

// 1. addNumbers
void addNumbers(int a, int b) {
  print("Sum = ${a + b}");
}

// 2. square (arrow syntax)
int square(int n) => n * n;

// 3. greet with optional parameters
void greet({String? name, String? city}) {
  if (name == null) {
    print("Hello Guest");
  } else if (city == null) {
    print("Hello $name");
  } else {
    print("Hello $name from $city");
  }
}
