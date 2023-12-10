void main() {
  String s1 = 'dart';
  String s2 = 'dart';

  print(s1.hashCode);
  print(s2.hashCode);
  s1 = 'flutter';
  print(s1.hashCode);
}
