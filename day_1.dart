// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

//import 'dart:math';
//import 'dart:mirrors';

class wwe{
  String fname;
  String lname;
  getname(){
  return 'And the name is $fname $lname !!!';
  }
  wwe(String fname , String lname){
    this.fname = fname ;
    this.lname = lname;
  
  }
}

  
String sayHello(){
    return 'Hello person';
 
}

String Person(String college,int a){
  return '$college person function : $a';
}

yell(String name,[String additionalMessage = 'NULL']) => 'Hello $name , $additionalMessage';

shout (String name, [String additionalMessage = "there you are!"]) => 'Hello $name , $additionalMessage';

wisper(String name , {String message}) => 'Hello $name , $message';

class Person_2{
  String fname;
  String lname ;
  PersonType type;
  String getfullname() => '$fname $lname';
}

class Person_3{
  String fname;
  String lname;
  PersonType type;
  
  Person_3(String fname, String lname){
    this.fname = fname;
    this.lname = lname;
  }
  String getfullname() => '$fname $lname';
  Person_3.anonymous(){} 
  
  String get fullName => '$fname $lname';
  String get initials => '${fname[0]}. ${lname[0]}.';
  
  set fullName_2(String fullname){ 
    var parts = fullname.split(" ");
    this.fname = parts.first;
    this.lname = parts.last;
  }
}

enum PersonType{
  student , employee
}

class one{
  String fname;
  String lname ;
  
  one([this.fname , this.lname]);
  
  factory one.fromType([PersonType type]){
    switch(type){ 
      case PersonType.employee: 
        return new Employee('a','b') ;
      case PersonType.student: 
        return new Student('c','d') ;
    }
    return one();
  }
  String getfullname() => '$fname $lname';
}

class Student extends one { 
  Student(fname ,lname ): super(fname , lname );
}

class Employee extends one { 
  Employee(fname , lname ): super(fname ,lname);
}

class Person_5{
  String fname ;
  String lname;
  Person_5(fname,lname){ 
    this.fname = fname;
    this.lname = lname;
  }
  static String personLabel ='Person name';
  String get fullname => '$personLabel $fname $lname';
  // modified to print the new static field 'personlabel'
  static void printsPerson(Person_5 person){
    print('$personLabel ${person.fname} ${person.lname}');
  }
  
  String get fullname_2 => '$fname $lname';
}

class Student_2 extends Person_5{
  String nickName;
  Student_2(String fname , String lname, this.nickName) : super(fname , lname);
  
  @override
  String toString() => '$fname, also known as $nickName';
}


abstract class Person_6{ 
  String fname;
  String lname;
  
  Person_6(this.fname, this.lname);
  String get fullname;
}

class Student_3 extends Person_6{
  Student_3(String fname , String lname) : super(fname , lname);
  @override
  String get fullname => '$fname $lname';
}

class ProgrammingSkills { 
  coding(){
    print('Writing Code ...');
  }
}

class ManagementSkills{
  manage(){
    print('Managing project ...');
  }
}

class SeniorDeveloper extends Person_6 with ProgrammingSkills,ManagementSkills{
  SeniorDeveloper(String fname , String lname) : super(fname , lname );
}

class JuniorDeveloper extends Person_6 with ProgrammingSkills{
  JuniorDeveloper(String fname , String lname) : super(fname , lname);
}

class AdvancedPrgrogrammingSkills extends ProgrammingSkills{
  makingCoffee(){
    print('Making Coffee ...');
  }
}

mixin ProgrammingSkills_2{
  coding(){
    print('Writing Code ...');
  }
}

mixin ManagementSkills_2{
  manage(){
    print('Managing project ...');
  }
}

class Developer { 
}

mixin ProgrammingSkills_3 on Developer{
  coding(){
    print('Managing project ...');
  }
}

void main() {
  print('person');
  const value = 1 ;
  print('$value');
  final person = 1 ;
  print('$person');
  const list = const[1,2,3];
  print('$list');
  String a= 'person';
  String b=' is a guy';
  String c = a+b;
  print('$c');
  print('$a$b');
  print("\nlength c  : ${c.length}");
  bool d= true;
  print('$d');
  int e = 10;
  print('$e');
  List f= [1,2,3];
  print('$f');
  Map g= {
    'name' : 'atharava',
    'college' : 'I2IT'
  };
  print('$g');
  var h = 12;
  var i= 'bang';
  print('$h');
  print('$i');
  var someInt = 1 ;
  //print(reflect(someInt).type.reflectedType.toString());
  //prints : int 
  var j;
  //here we didn't initialized dynamic 
  //type is the special dynamic 
  // now j is a int 
  j = 1;
  print('$j');
  print('$j');
  print(a is int);
  print(a is String);
  print(a is dynamic);
  print(a.runtimeType);
  j = 'asd';
  print('$j');
  print(a is int);
  print(a is String);
  print(a is dynamic);
  print(a.runtimeType);
  
  var say = sayHello();
  print(say);
  print(sayHello());
  
  String name = 'person';
  String college = 'I2IT';
  var guy = Person(college,12);
  print(guy);
  
  //print(yell('My Friend'));
  // above statement gives error as 
  // function can't accpet NULL value 
  
  print(yell('My Friend', 'Wassup'));
  print(shout('My Friend'));
  
  print(wisper('Yo man'));
  print(wisper('Yo man' , message : 'Wassup!'));
  
  var m = [1,2,3,4];
  m.forEach((number) => print('Hello $number'));
  
  List avengernames = ['Iron man ' , 'Hulk'];
  avengernames.add(12);
  print(avengernames);
  
  List<String> avengernames_2 = ['Iron man' , 'Hulk'];
  //avengernames_2.add(1);  // gives error coz we used List<String>
  avengernames_2.add('Thor');
  print(avengernames_2);
  
  var avengernames_3 = <String>['Hulk' , 'Captain America'];
  var avengernames_4 = <String , String>{
    'Captain America' : 'I have a shield',
    'Spider Man' : 'I have webs',
    'Hulk' : 'I am massive'
  };
  print(avengernames_4);
  
  Person_2 somePerson = new Person_2() ;
  somePerson.fname = 'Clark';
  somePerson.lname = 'Kent';
  print(somePerson.getfullname());
  
  print(PersonType.values);
  //Prints all the values 
  somePerson.type = PersonType.employee;
  print(somePerson.type);
  //prints PersonType employee
  print(somePerson.type.index);
  //prints the index of the employee of 
  // PersonType enum
  
  //changing the somePerson.type value 
  somePerson.type = PersonType.student;
  print(somePerson.type);
  print(somePerson.type.index);
  
  //Person_2 somePerson_2 = new Person_2;
  //this woh't compile as we have 
  // defined definite parameters for the 
  // constructor
  Person_3 somePerson_3 = new Person_3('Thor' , 'Almighty');
  print(somePerson_3.getfullname());
  wwe player = new wwe('John','Cena');
  print(player.getname());
  
  Person_3 somePerson_4 = new Person_3('Clark' ,'Kent');
  print(somePerson_4.fullName); // prints clark kent
  print(somePerson_4.initials); // prints c,k
  
  //somePerson_4.fullName = 'Peter Parker';
  // won't compile as we hav not defined a setter 
  // fullname so , it won't compile 
  
  Person_5 somePerson_5 = new Person_5('Clark' ,'Kent');
  Person_5 anotherPerson = new Person_5('Peter' , 'Parker');
  
  print(somePerson_5.fullname);
  // pritns Person name : clark kent 
  print(anotherPerson.fullname);
  // prints Person name ; Peter Parker
  
  Person_5.personLabel = 'name :';
  
  print(somePerson_5.fullname);
  // prints name : Clark Kent 
  print(anotherPerson.fullname);
  // prints name : Peter Parker
  
  Person_5.printsPerson(somePerson_5);
  Person_5.printsPerson(anotherPerson);
  
  print(somePerson_5.fullname_2);
  print(anotherPerson.fullname_2);
  
  Person_5.printsPerson(somePerson_5);
  Person_5.printsPerson(anotherPerson);
  
  Student_2 student_2 = new Student_2('Clark ' , 'Kent' , 'Kal-El');
  print(student_2);
  // same as calling student .toString()
  // prints Clark Kent, also known as Kal-El
  print('This is a student : $student_2');
  // Using the object as a string variable 
  // we have overriden the parent class behaviou
  
  //Person_6 music = new Person_6('Alan' , 'Walker');
  // Gives Error as Abstract Classes can't be instantiated 
  
  Student_3 student_3 = new Student_3('Alan' ,'Walker');
  print(student_3.fullname);
  
  
  
}


