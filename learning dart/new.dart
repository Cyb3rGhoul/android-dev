import 'dart:io';

void main(){
  print('Hello World');

  stdout.write('What is your name? ');
  
  var name = stdin.readLineSync();
  
  print('Hello $name');

  var harsh = new Human(); //object

  int? a; //nullable - can be null
  print(a);
}

class Human{
  Human(); //constructor

}