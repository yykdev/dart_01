/*
주어진 정수 배열 또는 리스트에서 가장 큰 두 수를 찾아 더한 값을 반환하는 함수를 작성하세요.
예시: [1, 2, 5, 3, 9, 8] 이 주어졌을 때, 가장 큰 두 수는 9와 8이므로 9 + 8 = 17이 반환되어야 합니다.
 */

void main() {
  List<int> target = [1, 2, 5, 3, 9, 8];

  int result = sum(target);

  print(result);
}

int sum(List<int> target){
  int first = 0;
  int second = 0;

  for(int i = 0;i < target.length;i++) {
    int current = target[i];
    if ( current > first ) {
      second = first;
      first = current;
    } else if ( current > second ) {
      second = current;
    }
  }

  return first + second;
}