/*
연습문제 13-3.

13-2 에서 이용한 A클래스나 B클래스의 인스턴스를 각각 1개씩 생성하여, List 에 차례로 담는다.
그 후에 List 의 요소를 차례대로 꺼내 각각의 인스턴스의 b() 메소드를 호출 하여야 한다. 이상을 전제로 다음 물음에 답하시오.

1. List 변수의 타입으로 무엇을 사용하여야 하는가
정답 : Y , List<?> 의 ?는 상속관계를 셋팅하는 것이 아닌 자료형을 셋팅 하는 것이기 때문에 b멤버를 가지고 있는 Y를 자료형으로 선언 해줘야 합니다.

2. 위에서 설명하고 있는 프로그램을 작성하시오
정답 : main 함수 작성
 */

abstract interface class X {
  void a();
}

abstract class Y implements X {
  void b();
}

class A extends Y {
  @override
  void a() {
    print('Aa');
  }

  @override
  void b() {
    print('Ab');
  }

  void c() {
    print('Ac');
  }
}

class B extends Y {
  @override
  void a() {
    print('Ba');
  }

  @override
  void b() {
    print('Bb');
  }

  void c() {
    print('Bc');
  }

}

void main() {
  A objA = A();
  B objB = B();

  List<Y> list = [objA, objB];

  for (final item in list) {
    item.b();
  }
}