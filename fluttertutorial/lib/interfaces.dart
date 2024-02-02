
// Define an interface
abstract class Shape {
  double area(); // Abstract method
  void draw(); // Abstract method
}

// Implement the interface in a class
class Circle implements Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;
  }

  @override
  void draw() {
    print('Drawing a circle');
  }
}

// Implement the interface in another class
class Square implements Shape {
  double side;

  Square(this.side);

  @override
  double area() {
    return side * side;
  }

  @override
  void draw() {
    print('Drawing a square');
  }
}

void main() {
  // Create instances of classes implementing the interface
  var circle = Circle(5.0);
  var square = Square(4.0);

  // Use methods from the interface
  print('Circle Area: ${circle.area()}');
  circle.draw();

  print('Square Area: ${square.area()}');
  square.draw();
}
