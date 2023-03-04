import 'dart:io';
import 'dart:core';

void main()
{
  int passMark = 60;
  int score, average;


  print("what is the student's percentage: \n");
  //Getting an int from the user
  var input1 = stdin.readLineSync();
  score = int.parse(input1 ?? '0');

  print("what is the class average: \n");
  //getting second int from user
  var input2 = stdin.readLineSync();
  average = int.parse(input2 ?? '0');

  if(score > passMark)
  {
    print("Excellent! You pass, your score is $score and the average is $average\n");
  }
  else if(score >= (average - 5))
  {
    print("You pass, Almost there, try harder next time\nyour score is $score and the average is $average\n");
  }
  else if(score == average) {
    print("You pass, It's an average score you can do better\nyour score is $score and the average is $average\n");
  }
  else
  {
    print("you failed,try Harder next time :( \nyour score is $score and the average is $average\n");
  }
}