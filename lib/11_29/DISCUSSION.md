# DISCUSSION

## 1. Class를 사용하는 이유에 대해 설명해 보세요.
> 객체의 구조 설계 후 재사용하여 반복 작업을 줄이고, 유지보수의 효율성을 위해.

## 2. Abstract Class & Mixin과 Interface 개념을 설명해 보세요.

### Abstract

> 선언은 돼 있지만 정의 되지 않은 클래스 ( Pizza 이긴 한데 토핑이 뭐가 올라갈지 모르는 상태 )

```dart
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
```

### Interface
> !????? dart Interface 이상함..

### Mixin
> 공식문서 => "Mixin은 여러 클래스 계층에서 클래스 코드를 재사용하는 방법이다."
> 
> 음....? 부모클래스를 수정하면 해당 부모클래스를 상속받고있는 모든 자식클래스들도 영향을 받게 되니,
> 상속 없이(or 관계없는) 클래스의 코드를 재사용 할 수 있게 하는 키워드인가 싶다...

```dart
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
```