class Employee {
  int empId;
  String empName;
  double salary;
  String companyName;
  String loc;

  Employee({
    required this.empId,
    required this.empName,
    required this.salary,
    required this.companyName,
    required this.loc,
  });

  Map<String, dynamic> toMap() {
    return {
      'empId': empId,
      'empName': empName,
      'salary': salary,
      'companyname': companyName,
      'loc': loc,
    };
  }
}
