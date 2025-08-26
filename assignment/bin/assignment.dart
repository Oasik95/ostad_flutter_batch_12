// 1. Abstract Class Animal
abstract class Animal {
  // private field
  String _name;

  // constructor
  Animal(this._name);

  // abstract method
  void makeSound();

  // concrete method
  String getName() => _name;
}

// 2. Lion Class
class Lion extends Animal {
  double _maneSize; // private field

  Lion(String name, this._maneSize) : super(name);

  // getter
  double get maneSize => _maneSize;

  // setter with validation
  set maneSize(double value) {
    if (value >= 0) {
      _maneSize = value;
    } else {
      print("Mane size cannot be negative.");
    }
  }

  @override
  void makeSound() {
    print("Roar!");
  }
}

// 2. Elephant Class
class Elephant extends Animal {
  double _trunkLength;

  Elephant(String name, this._trunkLength) : super(name);

  double get trunkLength => _trunkLength;

  set trunkLength(double value) {
    if (value >= 0) {
      _trunkLength = value;
    } else {
      print("Trunk length cannot be negative.");
    }
  }

  @override
  void makeSound() {
    print("Trumpet!");
  }
}

// 2. Parrot Class
class Parrot extends Animal {
  int _vocabularySize;

  Parrot(String name, this._vocabularySize) : super(name);

  int get vocabularySize => _vocabularySize;

  set vocabularySize(int value) {
    if (value >= 0) {
      _vocabularySize = value;
    } else {
      print("Vocabulary size cannot be negative.");
    }
  }

  @override
  void makeSound() {
    print("Squawk!");
  }
}

// 3. Main function
void main() {
  List<Animal> zoo = [
    Lion("Simba", 25.5),
    Elephant("Dumbo", 150.0),
    Parrot("Polly", 120)
  ];

  for (var animal in zoo) {
    print("Name: ${animal.getName()}");

    if (animal is Lion) {
      print("Mane Size: ${animal.maneSize}");
    } else if (animal is Elephant) {
      print("Trunk Length: ${animal.trunkLength}");
    } else if (animal is Parrot) {
      print("Vocabulary Size: ${animal.vocabularySize}");
    }

    print("Sound: ");
    animal.makeSound();
    print("------");
  }
}
