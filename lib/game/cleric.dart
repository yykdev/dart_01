import 'dart:math';

class Cleric {
  String name;

  final int maxHp = 50;
  final int maxMp = 10;
  int hp = 50;
  int mp = 10;

  Cleric(this.name);

  void selfAid() {
    if (mp < 5) {
      print("mp가 부족합니다.");
    } else {
      print("hp가 ${maxHp - hp} 회복 되었습니다.");
      mp -= 5;
      hp = maxHp;
    }
  }

  int pray(int time) {
    Random random = Random();
    int charge = time + random.nextInt(3);

    int summary = mp + charge;
    int recovery = 0;

    if (summary >= maxMp) {
      recovery = maxMp - mp;
      mp = maxMp;
    } else {
      recovery = charge;
      mp = summary;
    }

    print("mp가 ${recovery} 회복 되었습니다.");
    return recovery;
  }
}