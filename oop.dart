// Task 1: Even Numbers
void task1() {
  print("=== Task 1: Even Numbers 1-20 ===");
  Iterable<int> evenNumbers = List.generate(
    20,
    (i) => i + 1,
  ).where((n) => n % 2 == 0);
  evenNumbers.forEach(print);
}

// Task 2: Map, Set, List
void task2() {
  print("\n=== Task 2: Map, Set, List ===");

  Map<String, int> students = {"Ali": 85, "Sara": 92, "Omar": 78, "Laila": 95};

  print("Student names:");
  students.keys.forEach(print);

  var highestGrade = students.values.reduce((a, b) => a > b ? a : b);
  print("Highest grade: $highestGrade");

  students.remove("Omar");
  print("After removing Omar: $students");
}

// Task 3: Functions
void task3() {
  print("\n=== Task 3: Functions ===");

  var arrowArea = (int l, int w) => l * w;
  print("Arrow: ${arrowArea(6, 4)}");

  var anonymousArea = (int l, int w) {
    return l * w;
  };
  print("Anonymous: ${anonymousArea(7, 2)}");

  int calculateArea(int l, int w, Function formula) => formula(l, w);
  print("Higher-order: ${calculateArea(8, 3, (l, w) => l * w)}");
}

// Task 4: Stream
Stream<int> numberStream() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

Future<void> task4() async {
  print("\n=== Task 4: Stream ===");
  await for (var n in numberStream()) {
    print(n);
  }
}

// Task 5: Future & async/await
Future<String> fetchData() async {
  print("Fetching data...");
  await Future.delayed(Duration(seconds: 3));
  return "Data Loaded";
}

Future<void> task5() async {
  print("=== Task 5: Future & async/await ===");
  String result = await fetchData();
  print(result);
}

// Task 6: Null Safety
void task6() {
  print("\n=== Task 6: Null Safety ===");

  String? username;

  print("Welcome, ${username ?? "Guest"}");

  username ??= "DefaultUser";
  print("Username after ??=: $username");

  print("Length of username: ${username.length}");
}

Future<void> main() async {
  task1();
  task2();
  task3();
  await task4();
  await task5();
  task6();
}
