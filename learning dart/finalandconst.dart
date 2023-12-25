void main(){
  // final
  final name = 'John'; //inline delcaration is not important
  // name = 'Doe'; // error: name is final
  print(name);

  // const
  const age = 20; //inline delcaration is important
  // age = 21; // error: age is const
  print(age);

  // final vs const
  final finalName = 'John';
  const constName = 'John';
  // finalName = 'Doe'; // error: finalName is final
  // constName = 'Doe'; // error: constName is const
  print(finalName);
  print(constName);

  // final vs const in list
  final finalList = [1,2,3];
  const constList = [1,2,3];
  // finalList = [4,5,6]; // error: finalList is final
  // constList = [4,5,6]; // error: constList is const
  print(finalList);
  print(constList);

  finalList[0] = 9; // you can change the value of finalList
  // constList[0] = 4; // error: constList is const
  finalList.add(19);
   // you can add new value to finalList
  // constList.add(19); // error: constList is const

}