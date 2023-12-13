Future<String> timeoutFuture() async {
  await Future.delayed(Duration(seconds: 6));
  return 'ok';
}

void main() async {
  await timeoutFuture()
      .timeout(Duration(seconds: 5), onTimeout: () => 'timeout')
      .then((value) => print(value));
}
