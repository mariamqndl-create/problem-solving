/*
Dart Assignment (Lec3)

Assignment 1 (Questions)
1. Explain the difference between Class and Object with a real-life example.
2. What is a Constructor? What types of constructors does Dart support?
3. How does Dart handle Access Modifiers? Does it have public/private/protected like Java?
4. What is Encapsulation? How can you implement it in Dart using Getter and Setter?
5. Why should we use a Setter instead of making a variable public?
*/

// Answers (short)
// 1- Class = blueprint, Object = instance. Example: Car class, Toyota car object.
// 2- Constructor = special method when object created. Types: default, parameterized, named.
// 3- Dart uses "_" for private. No protected like Java.
// 4- Encapsulation = hide data using getter & setter.
// 5- Setter allows validation before changing value.

// Assignment 2
class BankAccount {
  double _balance = 0;

  double get balance => _balance;

  set deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
    } else {
      print("Invalid amount");
    }
  }
}

// Assignment 3
class User {
  String _username = "";

  set username(String name) {
    if (name.isNotEmpty) {
      _username = name;
    } else {
      print("Username cannot be empty");
    }
  }

  String get username => _username;
}

// Assignment 4
class Product {
  int _id;
  String _name;
  double _price;

  Product(this._id, this._name, this._price);

  double get price => _price;
  String get name => _name;

  set price(double value) {
    if (value > 0) {
      _price = value;
    } else {
      print("Invalid price");
    }
  }
}

class Cart {
  List<Product> products = [];

  void addProduct(Product p) {
    products.add(p);
  }

  void removeProduct(Product p) {
    products.remove(p);
  }

  double totalPrice() {
    double total = 0;
    for (var p in products) {
      total += p.price;
    }
    return total;
  }

  void printCart() {
    for (var p in products) {
      print("${p.name} - ${p.price}");
    }
    print("Total = ${totalPrice()}");
  }
}

// Main
void main() {
  print("---- Assignment 2 ----");
  var account = BankAccount();
  account.deposit = 100;
  print("Balance: ${account.balance}");

  print("\n---- Assignment 3 ----");
  var user = User();
  user.username = "Sara";
  print("Username: ${user.username}");

  print("\n---- Assignment 4 ----");
  var p1 = Product(1, "Laptop", 15000);
  var p2 = Product(2, "Phone", 8000);
  var p3 = Product(3, "Headphones", 1200);

  var cart = Cart();
  cart.addProduct(p1);
  cart.addProduct(p2);

  cart.printCart();
}
