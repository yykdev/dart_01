main() {
  int a = 11;
  int b = 9;

  checkNum(a, b);
}

void checkNum(int a, int b) {
  int summary = a + b;

  if (summary % 2 == 1) {
    print("YES");
  } else {
    print("NO");
  }
}