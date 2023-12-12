import 'package:logger/logger.dart';

void main() {
  final logger = Logger();

  logger.i('Dart Logger 라이브러리 테스트.');
  logger.w('Dart Logger 라이브러리 테스트.');
  logger.d('Dart Logger 라이브러리 테스트.');
  logger.t('Dart Logger 라이브러리 테스트.');

  // logger.t("Trace log");
  // logger.d("Debug log");
  // logger.i("Info log");
  // logger.w("Warning log");
  //

  final numString = '10.5';

  int num;

  try {
    num = int.parse(numString);
  } on FormatException catch (e, s) {
    logger.e("Dart Logger 라이브러리 테스트.", error: e);
    logger.f("Dart Logger 라이브러리 테스트.", error: e, stackTrace: s);
    num = 0;
  }

  print(num);
}
// https://pub.dev/packages/logger
