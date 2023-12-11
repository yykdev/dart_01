/*
연습문제
https://docs.google.com/presentation/d/1f8EnuXwGgLlvUR0AAuQVobyglwMDzAYV5BdUQxJUdYE/edit#slide=id.g7e0da1ef7d_0_60

파일을 복사하는 함수를 작성하시오
원본 파일 경로와 복사할 파일 경로는 프로그램 실행시 파라미터로 전달되는 것으로 하고, 버퍼링이나 에러 처리는 하지 않는다.
 */
import 'dart:io';

void copy(String source, String target) {
  final copyFile = File(source);
  copyFile.writeAsStringSync(target);
}

void main() {
  final originalFile = File('lib/23_12_11/original_file.txt');
  final originalFileContent = originalFile.readAsStringSync();

  copy('lib/23_12_11/copy_file.txt', originalFileContent);
}
