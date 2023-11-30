main() {
  int start = 5;
  int x = 10;

  String result = "";

  int roofCnt = 10;
  for(int i = 0;i < roofCnt;i++) {
    result += "${start + (x * i)}";

    if (i+1 < roofCnt) {
      result += " ";
    }
  }

  print(result);
}