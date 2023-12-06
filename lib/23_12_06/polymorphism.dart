abstract class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void hello();
}

class Korean extends Person {
  String nation = "Korea";

  Korean(super.name, super.age);

  @override
  void hello () {
    print("안녕하세요.");
  }
}

main() {
  Korean nouveau = Korean("nouveau", 20);
  nouveau.hello();

  Person yongyeon = Korean("yongyeon", 20);
  yongyeon.hello();
}