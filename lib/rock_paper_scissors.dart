import 'dart:io';
import 'dart:math';
import 'dart:core';
/*this is a game of paper, rock and scissors
* main - this is the entry point
* return: it does not return a type
*
*/
void main()
{
  String? input, name;
  String randomChoices;
  int randomNumber;

  Random random = new Random();
  //Array of choices
  List<String> keywords = ["rock", "paper", "scissors"];

  print("Yay!!\nLet's play Rock, paper and Scissors!!\n");
  print("What's your name?\n");
  name = stdin.readLineSync();
  print("Hi $name nice to meet u!\n");

  print("if you want to quit the game type 'q'\n");
  while(true) {
    print("What do you choose : \n");
    input = stdin.readLineSync();

    randomNumber = random.nextInt(3); // from 0 to 2 included


    //Generation of random choices
    randomChoices = keywords[randomNumber];

    //user : rock , system : paper
    if (input == "rock" && randomChoices == "paper") {
      print("HoHo! I won, paper wraps rock  better luck next time");
    }
    //user : paper , system : scissors
    else if (input == "paper" && randomChoices == "scissors") {
      print("scissors cuts paper, So its your lost Better luck next time ;]`");
    }
    //user : paper , system : scissors
    else if (input == "scissors" && randomChoices == "rock") {
      print("rock beats scissor, So its your lost Better luck next time ;]`");
    }
    //user : scissors , system : paper
    else if (input == "scissors" && randomChoices == "paper") {
      print(
          "Oops! i lost and you WON!, Scissors cuts paper i'll try hard next time :)");
    }
    else if (input == "paper" && randomChoices == "rock") {
      print("Yay! You Won :]");
    }
    else if (input == "rock" && randomChoices == "scissors") {
      print("Hhh! you won rock beats scissors ;)");
    }
    //user & system : same choice
    else if (input == randomChoices) {
      print(
          "hhh its the same choice '$randomChoices', Let's try doing it again");
    }
    else if(input == 'q')
    {
      break;
    }
    else
    {
      print("type a valid object\n");
    }
  }
}