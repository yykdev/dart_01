/*
연습문제 12-4.

유형자산 (TangibleAsset) 은, 자산 (Asset) 의 일종이며, 형태가 있는 것 (Thing) 의 일종이기도 하다.
이 정의에 맞도록 TangibleAsset 의 소스 코드를 수정하시오.
이 때, TangibleAsset 에 필드나 메소드의 추가가 필요하다면, 적당히 추가하시오.
 */

abstract class Asset {
  String name;
  int price;

  Asset(this.name, this.price);
}

abstract class IntangibleAsset extends Asset {

  IntangibleAsset(super.name, super.price);
}

class Patent extends IntangibleAsset {

  Patent(super.name, super.price);
}

abstract interface class Thing {
  double get weight;

  set weight(double weight);
}

abstract class TangibleAsset extends Asset implements Thing {
  String color;

  TangibleAsset(super.name, super.price, this.color);
}

class Book extends TangibleAsset {
  String isbn;
  double _weight;

  Book(super.name, super.price, super.color, this.isbn, weight) : _weight = weight;

  @override
  double get weight => _weight;

  @override
  set weight(double weight) =>_weight = weight;
}

class Computer extends TangibleAsset {
  String makerName;
  double _weight;

  Computer(super.name, super.price, super.color, this.makerName, weight) : _weight = weight;

  @override
  double get weight => _weight;

  @override
  set weight(double weight) => _weight = weight;
}