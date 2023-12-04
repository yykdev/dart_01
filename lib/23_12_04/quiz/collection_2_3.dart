/*
연습문제 2-3 에서 작성한 Person 클래스로 생성한 ‘홍길동’, ‘한석봉'의 나이를 각각 20, 25살 이라고 할 때, 이름과 나이를 쌍으로 적당한 컬렉션에 넣습니다.

그 다음, 컬렉션에 저장한 값을 하나씩 다음과 같이 출력합니다.

“홍길동의 나이는 20살”
“한석봉의 나이는 25살”

 */
class Person {
  String name;

  Person({required this.name});
}

void main() {
  Person seokBong = Person(name: "한석봉");
  Person gildong = Person(name: "홍길동");

  final memberMap = {
    gildong.name: 20,
    seokBong.name: 25,
  };

  for(final member in memberMap.entries) {
    print('${member.key} ${member.value}');
  }
}