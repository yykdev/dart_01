mixin Fineapple {
  void no() {
    print("피자엔 이런거 넣으면 안됨.");
  }
}

mixin Cheese {
  void yes() {
    print("치즈");
  }
}

// 부모 클래스
abstract class Pizza {
  topping();
}

class PepperoniPizza extends Pizza with Fineapple, Cheese {
  @override
  topping() {
    print("Topping : Pepperoni");
  }
}

class CheesePizza extends Pizza {
  @override
  topping() {
    print("Topping : Cheese");
  }
}

// 부모 클래스
abstract class Menu with Fineapple, Cheese {
  @override
  no();
}

class HwangDo extends Menu {
  @override
  void no() {
    print("???");
  }
}

main() {
  Pizza cheesePizza = CheesePizza();
  cheesePizza.topping();

  Pizza pepperoniPizza = PepperoniPizza();
  pepperoniPizza.topping();

  HwangDo menu = HwangDo();
  menu.no();
  menu.yes();
}