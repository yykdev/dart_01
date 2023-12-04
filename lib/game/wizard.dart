/*
클래스 “Wizard (마법사)”, “Wand (지팡이)” 를 작성하시오. 마법사는 지팡이를 들 수 있습니다.
 */
class Wizard {
  String name;
  int hp;
  int mp;
  Wand wand;

  Wizard({required this.name, required this.hp, required this.mp, required this.wand}) {
    if ( name.length < 3 ) {
      throw Exception('마법사의 이름은 3글자 이상이어야 합니다.');
    }

    if ( hp < 0 ) {
      throw Exception('마법사의 HP는 0 이상이어야 합니다.');
    }
    
    if ( mp < 0 ) {
      throw Exception('마법사의 MP는 0 이상이어야 합니다.');
    }
  }
}

class Wand {
  String name; // 이름
  double power; // 마력

  Wand({required this.name, required this.power}) {
    if ( name.length < 3 ) {
      throw Exception('지팡이의 이름은 3글자 이상이어야 합니다.');
    }

    if ( power < 0.5 || power > 100 ) {
      throw Exception('지팡이의 마력은 0.5 이상 100.0 이하여야 합니다.');
    }
  }
}

/*
문제 10-1 에서 작성한 Wand 클래스와 Wizard 클래스에 대해, 아래의 4가지 규칙에 따라 타당성 검사를 추가하시오.
부정한 값이 설정 될 경우에는 “Exception(“에러메세지");” 를 작성하여 프로그램을 중단 시킵니다.

- 마법사나 지팡이의 이름은 null 일 수 없고, 반드시 3문자 이상이어야 한다
- 지팡이의 마력은 0.5 이상 100.0 이하여야 한다.
- 마법사의 지팡이는 null 일 수 없다.
- 마법사의 MP는 0 이상이어야 한다.
- HP가 음수가 되는 상황에서는 대신 0을 설정 되도록 한다. (에러 아님)
 */

void main() {
  Wand wand = Wand(name: "마녀의 지팡이", power: 17.5);
  print('${wand.name} - ${wand.power}');

  Wizard wizard = Wizard(name: "세상에 이런딜이", hp: 20, mp: 50, wand: wand);
  print('${wizard.name} / ${wizard.hp} / ${wizard.mp} / ${wand.name}');
}