abstract class Pizza {
  topping();
}

class PepperoniPizza implements Pizza {
  @override
  topping() {
    print("Topping : Pepperoni");
  }
}

main() {
  Pizza pepperoniPizza = PepperoniPizza();
  pepperoniPizza.topping();
}