/*
클래스 “Wizard (마법사)”, “Wand (지팡이)” 를 작성하시오. 마법사는 지팡이를 들 수 있습니다.
 */
import 'dart:math';

class Wizard {
  String _name;
  int _hp;
  int _mp;
  Wand _wand;

  Wizard({required String name, required int hp, required int mp, required Wand wand}) : _name = name, _hp = hp, _mp = mp, _wand = wand {
    if ( _name.length < 3 ) {
      throw Exception('마법사의 이름은 3글자 이상이어야 합니다.');
    }

    if ( hp < 0 ) {
      throw Exception('마법사의 HP는 0 이상이어야 합니다.');
    }
    
    if ( mp < 0 ) {
      throw Exception('마법사의 MP는 0 이상이어야 합니다.');
    }
  }

  // 조회
  void info() {
    print('$_name / $_hp / $_mp');
  }

  // setter
  void set name(String name) {
    if (name.length < 3) {
      throw Exception('마법사의 이름은 3글자 이상이어야 합니다.');
    }
    _name = name;
  }

  void set mp(int value) {
    if (value < 0) {
      throw Exception('마법사의 MP는 0 이상이어야 합니다.');
    } else {
      _mp = value;
    }
  }

  void set hp(int value) {
    if (value < 0) {
      _hp = 0;
    } else {
      _hp = value;
    }
  }

  void set wand(Wand? wand) {
    if (wand == null) {
      throw Exception('지팡이가 없으면 마법을 시전 할 수 없습니다.');
    }
    _wand = wand;
  }
}

class Wand {
  String _name; // 이름
  double _power; // 마력

  Wand({required String name, required double power}) : _name = name, _power = power {
    if ( name.length < 3 ) {
      throw Exception('지팡이의 이름은 3글자 이상이어야 합니다.');
    }

    if ( power < 0.5 || power > 100 ) {
      throw Exception('지팡이의 마력은 0.5 이상 100.0 이하여야 합니다.');
    }
  }

  // 조회
  void info() {
    print('$_name / $_power');
  }

  //setter
  void set name(String name) {
    if ( name.length < 3 ) {
      throw Exception('지팡이의 이름은 3글자 이상이어야 합니다.');
    } else {
      _name = name;
    }
  }

  void set power(double power) {
    if ( power < 0.5 || power > 100 ) {
      throw Exception('지팡이의 마력은 0.5 이상 100.0 이하여야 합니다.');
    } else {
      _power = power;
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
  wand.info();

  Wizard wizard = Wizard(name: "세상에 이런딜이", hp: 20, mp: 50, wand: wand);
  wizard.info();
}