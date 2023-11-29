abstract class Pizza {
  topping();
}

class PepperoniPizza extends Pizza {
  @override
  topping() {
    print("Topping : Pepperoni");
  }
}

main() {
  Pizza pepperoniPizza = PepperoniPizza();
  pepperoniPizza.topping();
}