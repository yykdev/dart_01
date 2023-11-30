main() {
  String target = "111111";
  List<String> convertTarget = target.split("");

  int count = 0;
  for(int i = 0;i < convertTarget.length;i++) {
    if (convertTarget[i]
        == "1") {
      count += 1;
    }
  }

  count == 11 ? print("OK") : print(11 - count);
}