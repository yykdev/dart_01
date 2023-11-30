main() {
  List<String> target = ["모두연", "010", "1234", "5678"];
  String result = "";

  for (int i = 0;i < target.length;i++) {
    String separator = "";
    try {
      int.parse(target[i]);
      separator = "-";
    } on Exception {
      separator = " ";
    }

    if (i + 1 < target.length) {
      result += target[i] + separator;
    } else {
      result += target[i];
    }
  }

  print(result);
}