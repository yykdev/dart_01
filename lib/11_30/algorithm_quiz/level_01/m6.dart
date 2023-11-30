main() {
  int target = 777;
  List<String> convertTarget = target.toString().split('');

  bool flag = false;
  for(int i = 0;i < convertTarget.length;i++) {
    flag = convertTarget[0] == convertTarget[i];
  }

  flag ? print(target) : print("No");
}