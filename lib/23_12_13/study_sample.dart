/*
실제 API 호출을 생각 하면서 Future(Async) 테스트
 */

// 주변 주차장 정보를 조회 하는 API 흉내
Future<int> getParkingData() {
  Future<int> parkingFuture =
      Future<int>.delayed(Duration(seconds: 2), () => 36);
  return parkingFuture;
}

void main() {
  print('Ready !!');

  final parkingData = getParkingData();

  parkingData
      .then((value) => print('TotalCount : $value'))
      .catchError((onError) => print('Error!!!!!'))
      .whenComplete(() => print('Complete Update.'));

  print('Rendering..');
}
