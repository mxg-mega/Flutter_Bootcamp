import 'dart:io';
import 'dart:core';

void main()
{
  int passMark = 60;
  int? score, average;

  print("what is the student's percentage: ");
  score = stdin.readByteSync();

  print("what is the class average: ");
  average = stdin.readByteSync();

  if(score >= passMark)
  {
    print("You pass, The Student has an 'A , Excellent\n");
  }
  if(score == average)
  {
    print("You pass, It's an average score you can do better\n");
  }
  else if(score >= (average - 5))
  {
     print("You pass, Almost there, try harder next time");
  }
  else
  {
    print("you failed,try Harder next time :( \n");
  }

}