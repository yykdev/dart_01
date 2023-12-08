/*
다음 동작을 할 수 있도록 Book 클래스를 수정하시오.

1. 제목과 출간일이 같으면 같은 책으로 판단한다. 또한 Set 에 넣으면 동일 객체로 판단한다.
2. Book 인스턴스를 담고 있는 컬렉션에 대해 sort() 를 수행하여 출간일이 오래된 순서대로 정렬한다.
3. deep copy 를 지원한다

 */

// DateFormat 클래스 사용하기 위해 intl 라이브러리 설치
// flutter pub add intl
import 'package:intl/intl.dart';

class Book implements Comparable<Book> {
  String title;
  String comment;
  String publishDate;

  Book({
    required this.title,
    required this.comment,
    publishDate,
  }) : publishDate = DateFormat('yyyy-MM-dd').format(publishDate);

  Book copyWith({
    String? title,
    String? comment,
    DateTime? publishDate,
  }) {
    return Book(
        title: title ?? this.title,
        comment: comment ?? this.comment,
        publishDate: publishDate ?? this.publishDate);
  }

  //1-1. 제목과 출간일이 같으면 같은 책으로 판단한다.
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Book &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          publishDate == other.publishDate;

  @override
  int get hashCode => title.hashCode ^ publishDate.hashCode;

  @override
  int compareTo(Book other) {
    return publishDate.compareTo(other.publishDate);
  }

  @override
  String toString() {
    return 'Book{title: $title, comment: $comment, publishDate: $publishDate}';
  }
}

void main() {
  Book book1 =
      Book(title: 'Flutter', comment: '굿', publishDate: DateTime.now());
  print(book1.hashCode);

  Book book2 =
      Book(title: 'Flutter', comment: '좋습니다.', publishDate: DateTime.now());
  print(book2.hashCode);

  Set<Book> documentsSet = {book2, book1};
  print(documentsSet);

  List<Book> documentsList = [book2, book1];
  documentsList.sort();
  print(documentsList);

  final pocketMon = ['잠만보', '이상해씨', '꼬부기'];
  print(pocketMon);
  pocketMon.sort();
  print(pocketMon);
  pocketMon.sort((a, b) => a.compareTo(b));
  print(pocketMon);
  pocketMon.sort((a, b) => -a.compareTo(b));
  print(pocketMon);

  Book book3 = book1.copyWith(
      title: 'Flutter 3', comment: '좋습니다.', publishDate: DateTime.now());
  print(book1.hashCode);
  print(book3.hashCode);
}
