/*
연습문제 13-2.

이런 클래스가 선언되어 있다.
다음 물음에 답하시오

1.
X obj = A(); 로 A인스턴스를 생성한 후, 변수 obj에서 호출할 수 있는 메소드를 a(), b(), c() 중에 골라보시오

답 : a()

2.
Y y1 = A();
Y y2 = B(); 로 A와 B의 인스턴스를 생성한 후
y1.a();
y2.a(); 를 실행했을 때에 화면에 표시되는 내용을 말하시오.

답 :
Aa
Ba
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
  // 상속의 개념에 매몰되면 안됨!!

  // X obj = A();
  // obj.a();
  // obj.b(); // 안됨
  // obj.c(); // 안됨

  // A의 자료형이 X이기 때문에,
  // X는 A가 아니기 때문에 c를 호출 할 수 없고,
  // X는 Y가 아니기 때문에 b를 호출 할 수 없다.
  // 즉 X에 정의 되 있는 멤버가 아닌 것은 사용 할 수 없다.

  // -----------------------------------

  // Y y1 = A();
  // Y y2 = B();
  // y1.a(); // 됨
  // y2.a(); // 됨
  // y1.b(); // 됨
  // y2.b(); // 됨
  // y1.c(); // 안됨
  // y2.c(); // 안됨

  // A(B)의 자료형이 Y이기 때문에,
  // A가 상속 받은 Y의 b와 Y가 상속받은 X의 a를 호출 할 수 있지만,
  // Y에는 c도 없고, Y가 상속 받은 X에도 c가 없기 때문에 c는 호출 할 수 없다.

  // -----------------------------------

  A obj2 = A();
  // obj2.a(); // 됨
  obj2.b(); // 됨
  // obj2.c(); // 됨
  // A의  A 이기 때문에 A 에서 정의한 메소드와 override한 메소드가 모두 실행 됨.
}
