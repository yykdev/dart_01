mixin Fineapple {
  void no() {
    print("피자엔 이런거 넣으면 안됨.");
  }
}

abstract class Pizza {
  topping();
}

class PepperoniPizza extends Pizza with Fineapple {
  @override
  topping() {
    print("Topping : Pepperoni");
    no();
  }
}

main() {
  Pizza pepperoniPizza = PepperoniPizza();
  pepperoniPizza.topping();
}