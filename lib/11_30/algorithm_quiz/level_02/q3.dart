main() {
  String target = "//+//////";
  List<String> splitTarget = target.split("+");
  int result = 0;

  for(int i = 0;i < splitTarget.length;i++) {
    int temp = convertNum(splitTarget[i]);
    result += temp;
  }

  print(result);
}

int convertNum(String text) {
  int result = 0;
  List<String> splitText = text.split("");

  for(int i = 0;i < splitText.length;i++) {
    if (splitText[i] == "<") {
      result += 10;
    } else {
      result += 1;
    }
  }

  return result;
}