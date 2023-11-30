main() {
  List<int> target = [5, 8, 19, 25, 31];

  for(int i = 0;i < target.length;i++) {
    if (i + 1 == target.length) {
      break;
    }

    print(target[i+1] - target[i]);
  }
}