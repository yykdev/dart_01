/*
  1. 2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정리하여 이름을 나열하시오
  2. 거래자가 근무하는 모든 도시를 중복 없이 나열하시오
  3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열하시오
  4. 모든 거래자의 이름을 알파벳순으로 정렬하여 나열하시오
  5. 밀라노에 거래자가 있는가?
  6. 케임브리지에 거주하는 거래자의 모든 트랙잭션값을 출력하시오
  7. 전체 트랜잭션 중 최대값은 얼마인가?
  8. 전체 트랜잭션 중 최소값은 얼마인가?

 */
import 'dart:math';

class Trader {
  String name;
  String city;

  Trader(this.name, this.city);
}

class Transaction {
  Trader trader;
  int year;
  int value;

  Transaction(this.trader, this.year, this.value);

  @override
  String toString() {
    return '[${trader.name}-${trader.city}|$year|$value]';
  }
}

final transactions = [
  Transaction(Trader("Raoul", "Cambridge"), 2011, 400),
  Transaction(Trader("Brian", "Cambridge"), 2011, 300),
  Transaction(Trader("Raoul", "Cambridge"), 2012, 1000),
  Transaction(Trader("Mario", "Milan"), 2012, 710),
  Transaction(Trader("Mario", "Milan"), 2012, 700),
  Transaction(Trader("Alan", "Cambridge"), 2012, 950),
];

void main() {
  // 1. 2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정리하여 이름을 나열하시오
  final answer01 = transactions
      .where((element) => element.year == 2011)
      .toList()
    ..sort((a, b) => a.value.compareTo(b.value));
  print('answer01 : $answer01}');

  // 2. 거래자가 근무하는 모든 도시를 중복 없이 나열하시오
  final answer02 = transactions.map((e) => e.trader.city).toSet();
  print('answer02 : $answer02}');

  // 3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열하시오
  final answer03 = transactions
      .where((element) => element.trader.city == 'Cambridge')
      .toList()
    ..sort((a, b) => a.trader.name.compareTo(b.trader.name));
  print('answer03 : $answer03}');

  // 4. 모든 거래자의 이름을 알파벳순으로 정렬하여 나열하시오
  final answer04 = transactions
    ..sort((a, b) => a.trader.name.compareTo(b.trader.name));
  print('answer04 : $answer04}');

  // 5. 밀라노에 거래자가 있는가?
  final answer05 =
      transactions.any((element) => element.trader.city == 'Milan');
  print('answer05 : $answer05}');

  // 6. 케임브리지에 거주하는 거래자의 모든 트랙잭션 값을 출력하시오
  final answer06 = transactions
      .where((element) => element.trader.city == 'Cambridge')
      .map((e) => e.value)
      .toList();
  print('answer06 : $answer06}');

  // 7. 전체 트랜잭션 중 최대값은 얼마인가?
  final answer07 = transactions
      .map((e) => e.value)
      .reduce((value, element) => max(value, element));
  print('answer07 : $answer07}');

  // 8. 전체 트랜잭션 중 최소값은 얼마인가?
  final answer08 = transactions
      .map((e) => e.value)
      .reduce((value, element) => min(value, element));
  print('answer08 : $answer08}');
}
