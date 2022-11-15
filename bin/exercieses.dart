import 'package:exercieses/exercieses.dart' as exercieses;
import 'dart:io';

/*ex1
foydalanuvchi ismini kiritadi 
yoshini suraymiz va nechi yoshga kirganini print qil!
*/

void main(List<String> arguments) {
  stdout.write("What is your name?__");
  String? name = stdin.readLineSync();
  print("Hi $name, what is your age?__");
  int age = int.parse(stdin.readLineSync()!);

  int curentAge = 2022 - age;
  print("Hi $name, your age $curentAge!");
}
