class Student{
  int id;

  Student({required this.id});

  getData(){
    print("Student:$id");
  }
}


class SeniorStudent extends Student{
  int roll;

  SeniorStudent({required super.id,required this.roll});

  @override
  getData() {
    print("Senior Student Id:$id  RollNO:roll");
  }
}

main(){
  Student(id: 33).getData();
  SeniorStudent(id: 23, roll: 123).getData();

}