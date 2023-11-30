main() {
  num a = 20;
  num b = 10;

  checkNum(a, b);
}

void checkNum(num a, num b) {
  if (a > b) {
    print(a);
  } else if (a < b) {
    print(b);
  } else {
    print("eq");
  }
}