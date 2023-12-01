import 'cleric.dart';

main() {
  Cleric cleric = Cleric("11_김용연");

  cleric.selfAid();
  cleric.selfAid();
  cleric.selfAid();
  cleric.pray(5);
  cleric.pray(5);

  print("-------------");
  print("hp : ${cleric.hp} , mp : ${cleric.mp}");
}