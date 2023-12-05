class Hero {
  String name;
  int hp;


  Hero(this.name, this.hp);

  void attack(Slime slime) {
    print('$name이 $slime을 공격했다.');
    slime.hp -= 10;
  }

  void run() {
    print('$name이 도망쳤다.');
  }
}

class Slime {
  int hp = 50;
  final String suffix;

  Slime(this.suffix);

  void attack(Hero hero) {
    print('슬라임 $suffix이/가 공격했다.');
    print('10의 데미지');
    hero.hp -= 10;
  }
}

class PoisonSlime extends Slime {
  // 3 PoisonSlime 독 공격이 가능한 남은 횟수를 int 형 필드를 가지고 있고 초기값은 5 이다
  int attackPoint = 5;

  PoisonSlime(super.suffix);

  @override
  void attack(Hero hero) {
    if ( attackPoint > 0 ) {
      // 4-d 용사의 HP 의 1/5에 해당하는 포인트를 용사의 HP 로부터 감소시키고, “~포인트의 데미지" 라고 표시
      int damage = hero.hp ~/ 5;
      hero.hp -= damage;
      print('${hero.name}에게 $damage 포인트의 데미지를 주었습니다.');

      // 4-e “독 공격의 남은 횟수" 를 1 감소 시킨다
      attackPoint -= 1;
    } else {
      print('독공격의 남은 횟수가 없습니다.');
    }
  }
}

void main() {
  Hero hero1 = Hero('세상에 이런딜이', 50);
  PoisonSlime poisonSlime = PoisonSlime('A');

  poisonSlime.attack(hero1);
  print('hero hp : ${hero1.hp} | poison point : ${poisonSlime.attackPoint}');
  poisonSlime.attack(hero1);
  poisonSlime.attack(hero1);
  print('hero hp : ${hero1.hp} | poison point : ${poisonSlime.attackPoint}');

}