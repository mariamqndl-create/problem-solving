//// 1. Inheritance
class Vehicle {
  String brand;
  int year;

  Vehicle(this.brand, this.year);

  void displayInfo() {
    print("$brand - $year");
  }
}

class Car extends Vehicle {
  int doors;
  Car(String brand, int year, this.doors) : super(brand, year);

  @override
  void displayInfo() {
    print("Car: $brand, Year: $year, Doors: $doors");
  }
}

class Bike extends Vehicle {
  String type;
  Bike(String brand, int year, this.type) : super(brand, year);

  @override
  void displayInfo() {
    print("Bike: $brand, Year: $year, Type: $type");
  }
}

//// 2. Method Override
class Animal {
  void speak() {
    print("Animal sound");
  }
}

class Dog extends Animal {
  @override
  void speak() {
    print("Woof!");
  }
}

class Cat extends Animal {
  @override
  void speak() {
    print("Meow!");
  }
}

//// 3. Abstraction
abstract class Shape {
  double area();
}

class Circle extends Shape {
  double r;
  Circle(this.r);

  @override
  double area() => 3.14 * r * r;
}

class Rectangle extends Shape {
  double w, h;
  Rectangle(this.w, this.h);

  @override
  double area() => w * h;
}

//// 4. Static
class Counter {
  static int count = 0;

  Counter() {
    count++;
  }

  static void getCount() {
    print("Objects: $count");
  }
}

//// 5. Method Overloading (simulate)
class Calculator {
  int add(int a, int b, [int? c]) {
    return c == null ? a + b : a + b + c;
  }
}

//// 6. Mixins
mixin Logger {
  void log(String msg) => print("[LOG] $msg");
}

mixin Printer {
  void printData(String data) => print("[DATA] $data");
}

class Report with Logger, Printer {
  void generateReport() {
    print("Report ready");
  }
}

//// MAIN
void main() {
  print("---- Inheritance ----");
  Car c = Car("BMW", 2020, 4);
  Bike b = Bike("Honda", 2019, "Sport");
  c.displayInfo();
  b.displayInfo();

  print("\n---- Override ----");
  List<Animal> pets = [Dog(), Cat()];
  for (var p in pets) {
    p.speak();
  }

  print("\n---- Abstraction ----");
  print("Circle area: ${Circle(5).area()}");
  print("Rectangle area: ${Rectangle(4, 6).area()}");

  print("\n---- Static ----");
  Counter();
  Counter();
  Counter.getCount();

  print("\n---- Overloading ----");
  Calculator calc = Calculator();
  print(calc.add(2, 3));
  print(calc.add(2, 3, 4));

  print("\n---- Mixins ----");
  Report r = Report();
  r.log("Start");
  r.printData("Data here");
  r.generateReport();
}
