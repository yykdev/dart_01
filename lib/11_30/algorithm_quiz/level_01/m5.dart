main() {
  List<int> totalCard = [1, 2, 3, 4, 5];
  List<int> myCard = [1, 3, 2, 5];

  for (int i = 0;i < totalCard.length;i++) {
    bool flag = false;

    for(int j = 0;j < myCard.length;j++) {
      flag = totalCard[i] == myCard[j];
      if (flag) {
        break;
      }
    }

    if (!flag) {
      print("${totalCard[i]}");
      break;
    }
  }
}