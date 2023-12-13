/*
연습문제 1.
1-1. sample.csv 파일을 읽어와서 “한석봉" 이라는 문자열이 있는지 찾고, 있다면 sample_copy.csv 파일에 “김석봉"으로 수정하는 함수를 작성하시오.
(async - await 사용할 것)

1-2. 위 함수를 실행할 때 파일을 찾을 수 없는 경우 예외 처리를 수행하시오.
 */

import 'dart:io';

import 'package:logger/logger.dart';

final logger = Logger();

Future<String> getSampleCSVData() async {
  try {
    final sampleCSV = File('lib/23_12_13/quiz/sample.csv');
    final sampleCSVData = sampleCSV.readAsStringSync();

    return sampleCSVData;
  } catch (e) {
    rethrow;
  }
}

Future<void> replaceCSVData({
  required String oldText,
  required String newText,
  required String sampleCSVData,
}) async {
  try {
    if (sampleCSVData.contains(oldText)) {
      final copyCSV = File('lib/23_12_13/quiz/sample_copy.csv');
      final updateData = sampleCSVData.replaceAll(oldText, newText);
      copyCSV.writeAsStringSync(updateData);

      print('수정 사항이 발생 했습니다.');
    } else {
      print('수정 사항 없음.');
    }
  } catch (e) {
    rethrow;
  }
}

void main() async {
  await getSampleCSVData()
      .then((value) =>
          replaceCSVData(oldText: '한석봉', newText: '김석봉', sampleCSVData: value))
      .catchError((e) => logger.e(e));
}
