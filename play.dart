class Vehicle {
  String model;
  int year;

  Vehicle(this.model, this.year) {
    print(model);
    print(year);
  }

  void showOutPut() {
    print(model);
    print(year);
  }
}

class Car extends Vehicle {
  double price;

  Car(String model, int year) : super(model, year);

  void showOutPut() {}
}

void main() {}
