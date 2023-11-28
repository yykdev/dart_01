import 'dart:math';

void main() {
  // final 변수
  final int finalValue = Random().nextInt(10);
  print("finalValue: $finalValue");

  // const 변수
  const int constValue = 5;
  print("constValue: $constValue");

  // final 변수 재할당 (오류)
  // finalValue = 10;

  // const 변수 재할당 (오류)
  // constValue = 10;

  // final 변수 변경
  final int finalNewValue = finalValue + 5;
  print("finalNewValue: $finalNewValue");

  // const 변수 변경 (오류)
  // const int constNewValue = constValue + 5;
}

/*
final 과 const 이 둘을 명확하게 이해하고 구분해 사용 해야 한다.

- 변수를 상수로 만들어야한다면 final과 const 키워드를 사용한다.
- final은 런타임 시점, const는 컴파일 시점에 할당된다.
- 만약 구분이 어렵다면, 상수를 써야하는 대부분의 경우에는 final을 이용하자.
- 그리고 const는 절대로, 죽어도 값이 안 변할 것 같은 곳에만 써주자.
 */