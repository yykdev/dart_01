/*
연습문제 13-4.
스타크래프트에는 Terran, Zerg, Protoss 세 종족이 있습니다.
Terran 은 인간 종족이고 생물(Bionic) 유닛인 Marine, Medic 등과 기계 유닛(Mechanic)인 Tank, Vulture, SCV 등이 있습니다.
SCV는 일꾼 유닛으로 자원을 채취할 수 있으며, 기계 유닛의 수리를 할 수 있습니다.
Medic은 생물유닛과 SCV 를 치료할 수 있습니다.

위 정보를 토대로 Marine, Medic, Tank, Vulture, SCV 클래스를 설계하시오.
 */

abstract class StarCraft {
  String _name;


  StarCraft(name) : _name = name;

  String get name => _name;

  set name(String name) {
    _name = name;
  }
}

abstract class Unit {

}

abstract class Building {

}

class Terran {

}

class Zerg {

}

class Protoss {

}

