/*
다음과 같은 사원 클래스와 부서 클래스가 있습니다.

총무부 리더 ‘홍길동(41세)’의 인스턴스를 생성하고 직렬화하여 company.txt 파일에 쓰는 프로그램을 작성하시오.
직렬화를 위해 위의 2개 클래스를 일부 수정해도 됩니다.

 */

import 'dart:convert';
import 'dart:io';

// class Employee {
//   String name;
//   int age;
//
//   Employee(this.name, this.age);
// }
//
// class Department {
//   String name;
//   Employee leader;
//
//   Department(this.name, this.leader);
//
//   Map<String, dynamic> toJson() => {
//         'departmentName': name,
//         'departmentLeader': {
//           'leaderName': leader.name,
//           'leaderAge': leader.age,
//         }
//       };
// }

// 직렬화, 역직렬화 반영한 로직 개선
class Employee {
  String name;
  int age;

  Employee({required this.name, required this.age});

  // 직렬화 member data => json
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
    };
  }

  // 역직렬화 json => member data
  factory Employee.fromJson(Map<String, dynamic> map) {
    return Employee(
      name: map['name'],
      age: map['age'],
    );
  }
}

class Department {
  String name;
  Employee leader;

  Department({required this.name, required this.leader});

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'leader': leader.toJson(),
    };
  }

  factory Department.fromJson(Map<String, dynamic> map) {
    return Department(
        name: map['name'], leader: Employee.fromJson(map['leader']));
  }
}

void main() {
  final hong = Employee(name: "홍길동", age: 41);
  final department = Department(name: "총무부", leader: hong);
  final encodeData = jsonEncode(department.toJson());
  print(encodeData);

  final companyFile = File('lib/23_12_11/company.txt');
  companyFile.writeAsStringSync(encodeData);

  final readFile = companyFile.readAsStringSync();
  final decodeData = jsonDecode(readFile);
  final fromJson = Department.fromJson(decodeData);
  print(fromJson.toJson());
}
