import 'dart:math';

class Cleric {
  static const int maxHP = 50;
  static const int maxMP = 10;

  String name;
  int hp;
  int mp;

  Cleric(this.name, {this.hp = maxHP, this.mp = maxMP});

  void info() {
    print("$name - hp : $hp , mp : $mp");
  }

  void selfAid() {
    if (mp < 5) {
      print("'$name'의 mp가 부족합니다.");
    } else {
      print("'$name'의 hp를 ${maxHP - hp} 회복 되었습니다.");
      mp -= 5;
      hp = maxHP;
    }
  }

  int pray(int time) {
    Random random = Random();
    int charge = time + random.nextInt(3);

    int summary = mp + charge;
    int recovery = 0;

    if (summary >= maxMP) {
      recovery = maxMP - mp;
      mp = maxMP;
    } else {
      recovery = charge;
      mp = summary;
    }

    print("'$name'의 mp를 $recovery 회복 되었습니다.");
    return recovery;
  }
}

main() {
  Cleric cleric = Cleric("거침없이로우킥", hp: 40, mp: 5);

  cleric.selfAid();
  cleric.selfAid();
  cleric.selfAid();
  cleric.pray(5);
  cleric.pray(5);

  print("-------------");
  cleric.info();

  Cleric cleric2 = Cleric("뚱이", hp: 40);
  cleric2.info();

  Cleric cleric3 = Cleric("스누피");
  cleric3.info();
}