import 'dart:io';
import 'dart:core';

void main()
{
  int passMark = 60;
  int score, average;

  print("what is the student's score: ");
  score = stdin.readByteSync();

  print("what is the class average: ");
  average = stdin.readByteSync();

  if(score >= passMark)
  {
    print("you pass ;)");
  }
  else
  {
    print("try Harder next time but you failed :(");
  }

}