# DISCUSSION

## 1. Class를 사용하는 이유에 대해 설명해 보세요.
> 객체의 구조 설계 후 재사용하여 반복 작업을 줄이기 위해.

## 2. Abstract Class & Mixin과 Interface 개념을 설명해 보세요.

### Abstract

> 선언은 돼 있지만 정의 되지 않은 클래스 ( Pizza 이긴 한데 토핑이 뭐가 올라갈지 모르는 상태 )

```dart
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
```

### Interface


### Mixin
