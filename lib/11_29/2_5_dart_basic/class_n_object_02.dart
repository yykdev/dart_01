// 다음의 함수가 실행 될 수 있도록 Class Person을 작성하시오
void main() {
  var person = Person('Nouveau', 1);
  person.printInfo();
}

class Person{
  var name;
  var age;

  Person(this.name, this.age);

  void printInfo() {
    print("name : $name , age : $age");
  }
}