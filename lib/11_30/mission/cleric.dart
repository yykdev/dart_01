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
}