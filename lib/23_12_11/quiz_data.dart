/*
다음과 같은 사원 클래스와 부서 클래스가 있습니다.

총무부 리더 ‘홍길동(41세)’의 인스턴스를 생성하고 직렬화하여 company.txt 파일에 쓰는 프로그램을 작성하시오.
직렬화를 위해 위의 2개 클래스를 일부 수정해도 됩니다.

 */

import 'dart:convert';
import 'dart:io';

class Employee {
  String name;
  int age;

  Employee(this.name, this.age);
}

class Department {
  String name;
  Employee leader;

  Department(this.name, this.leader);

  Map<String, dynamic> toJson() => {
        'departmentName': name,
        'departmentLeader': {
          'leaderName': leader.name,
          'leaderAge': leader.age,
        }
      };
}

void main() {
  Employee hong = Employee("홍길동", 41);
  Department hongDepartment = Department("총무부", hong);
  String hongDepartmentString = jsonEncode(hongDepartment.toJson());

  final departmentFile = File('lib/23_12_11/department.txt');
  departmentFile.writeAsStringSync(hongDepartmentString);
}
