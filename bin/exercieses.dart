import 'dart:math';

import 'package:exercieses/exercieses.dart' as exercieses;
import 'dart:io';

/*ex1
foydalanuvchi ismini kiritadi 
yoshini suraymiz va nechi yoshga kirganini print qil!


void main(List<String> arguments) {
  stdout.write("What is your name?__");
  String? name = stdin.readLineSync();
  print("Hi $name, what is your age?__");
  int age = int.parse(stdin.readLineSync()!);

  int curentAge = 2022 - age;
  print("Hi $name, your age $curentAge!");
}
*/

/*ex2
Foydalanuvchidan son kiritishni so'raymiz
va kiritgan soni toq yoki juft son ekani print qilamiz

void main(List<String> args) {
  stdout.write("Enter a number ->");
  int xnumber = int.parse(stdin.readLineSync()!);

  if (xnumber % 2 == 0) {
    print("choosen number is even");
  } else {
    print("choosen number is odd");
  }
}
*/

/*ex3

void main(List<String> args) {
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  for (var i in a) {
    if (i < 5) {
      print(i);
    }
  }
  print([
    for (var i in a)
      if (i < 5) i
  ]);
}
*/

/*ex4
void main(List<String> args) {
  stdout.write("Please choose a number: ");
  int number = int.parse(stdin.readLineSync()!);
  for (var i = 1; i <= number; i++) {
    if (number % i == 0) {
      print(i);
    }
  }
}
*/
/*ex5

void main(List<String> args) {
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 89];
  Set<int> c = {};
  for (var i in a) {
    print('$i bu i****');
    for (var j in b) {
      print("$j bu j ****");
      if (i == j) {
        c.add(i);
      }
    }
  }
  print(c.toList());
}
*/

/*ex6

void main() {
  stdout.write("Please give a word: ");
  String text = stdin.readLineSync()!.toLowerCase();
  print(text);
  String retext = text.split("").reversed.join();
  print(retext);
}
*/

/*ex7
Let’s say you are given a list saved in a variable:

a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]. 
Write a Dart code that takes this list and makes a new list that has only the even elements of this list in it.

void main(List<String> args) {
  List<int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  int i = 0;
  List<int> eventList = [];

  for (var e in a) {
    if (++i % 2 == 0) {
      eventList.add(e);
    }
  }
  print(eventList);
}*/

/*ex8 listda berilgan elementlarning juft qiymatlilarini top
void main(List<String> args) {
  List<int> a = [1, 3, 5, 7, 9, 2, 3, 4, 5, 6, 7, 8, 9];
  List<int> eventlist = [];
  for (var e in a) {
    if (e % 2 == 0) {
      eventlist.add(e);
    }
  }
  print(eventlist);
}
*/

/*ex9 paper rock scissers
void main(List<String> args) {
  print("Welcome to Rock, Paper, Scissors \n Type 'exit' to stop the game ");
  final random = Random();
  // Rules of the game
  Map<String, String> rules = {
    "rock": "scissers",
    "scissers": "paper",
    "paper": "rock"
  };
  // initial score
  int user = 0;
  int comp = 0;

  // Options for campyuter to chose
  List<String> options = ['rock', "paper", "scissers"];
  // Actual game
  while (true) {
    // index raqami orqali tanlab oladi 
    String compChoice = options[random.nextInt(options.length)];
    stdout.write("\n Please choose Rock, Paper or Scissers");
    String userChoise = stdin.readLineSync()!.toLowerCase();
    if (userChoise == 'exit') {
      print('\n You: $user Coumpyuter: $comp \n Bye Bye');
      break;
    }
    if (!options.contains(userChoise)) {
      print("Incorect choice");
      continue;
    } else if (compChoice == userChoise) {
      print("we have  a tie!");
    } else if (rules[compChoice] == userChoise) {
      print("Coumpyter wins: $compChoice vs $userChoise");
      comp += 1;
    } else if (rules[userChoise] == compChoice) {
      print("You win: $userChoise vs $compChoice");
      user += 1;
    }
  }
}
*/
/*ex 10
Generate a random number between 1 and 100. Ask the user to guess the number,
then tell them whether they guessed too low, too high, or exactly right.


void main(List<String> args) {
  print("type exit to quit the game ");
  guessingGame();
}

void guessingGame() {
  final random = Random();
  int randNumber = random.nextInt(100);
  int attempt = 0;

  while (true) {
    attempt += 1;
    stdout.write("Please choose a number bettwen 0 and 100: ");
    String chosenNumber = stdin.readLineSync()!;

    // make sure user does not go out of limts
    if (chosenNumber.toLowerCase() == "exit") {
      print("\nBye");
      break;
      // this break stop for while tskil
    } else if (int.parse(chosenNumber) > randNumber) {
      print("You are higher");
      continue;
    } else {
      print('You are lower');
      continue;
    }
  }
}
*/

/*ex11
Exercise 10
Ask the user for a number and determine whether the number is prime(tub) or not.


void main(List<String> args) {
  stdout.write("Please give us a number:  ");
  int chosenNumber = int.parse(stdin.readLineSync()!);

  checkPrime(chosenNumber);
}

void checkPrime(int chosenNumber) {
  // List comprehensions
  List<int> a = [
    for (var i = 1; i <= chosenNumber; i++)
      if (chosenNumber % i == 0) i
  ];

  // check for prime
  a.length == 2
      ? print("The chosen number is a prime")
      : print("the chosen number is not prime ");
}*/

/*ex12
Write a program that takes a list of numbers for example

a = [5, 10, 15, 20, 25]
and makes a new list of only the first and last elements of the given list. For practice, write this code inside a function.

void main(List<String> args) {
  // Initialize the random list
  final random = Random();
  List<int> randList = List.generate(10, (_) => random.nextInt(100));

  // Pass it to the function
  print(randList);
  print(newList(randList));
}

// List<int> newList(List<int> randList) {
//   return [randList.first, randList.last];
// }
List<int> newList(List<int> initialList) {
  return [initialList.first, initialList.last];
}
*/

/*ex13
Write a program that asks the user how many Fibonnaci numbers to generate and then generates them.
Take this opportunity to think about how you can use functions.

Make sure to ask the user to enter the number of numbers in the sequence to generate.*/
void main(List<String> args) {
  stdout.write("How many Fibonacci numbers do you want? ");
  int chosenNumber = int.parse(stdin.readLineSync()!);

  List<int> result = fibonacciNumbers(chosenNumber);
  print(result);
}

// Function to calculate the fibonacciNumbers
List<int> fibonacciNumbers(int chosenNumber) {
  List<int> fibList = [1, 1];
  for (var i = 0; i < chosenNumber; i++) {
    fibList.add(fibList[i] + fibList[i + 1]);
  }
  return fibList;
}
