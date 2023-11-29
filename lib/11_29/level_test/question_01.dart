/*
주어진 문자열이 회문(palindrome)인지 확인하는 함수를 작성하세요. 회문이란, 거꾸로 읽어도 원래와 같은 단어나 문장을 말합니다.
예시: "racecar"는 회문입니다. "hello"는 회문이 아닙니다.
 */

void main() {
  String checkText = "race1car";

  checkPalindrome(checkText);
}

void checkPalindrome(String checkText) {
  List<String> target = checkText.split("");

  num test = target.length / 2;
  bool result = false;

  for(int i = 0;i < test.floor();i++) {
    var order = target[i];
    var reverseOrder = target[target.length - 1 - i];

    result = order == reverseOrder;

    if (!result) {
      break;
    }
  }

  print("'$checkText'는 ${result ? "회문 입니다." : "회문이 아닙니다."}");
}