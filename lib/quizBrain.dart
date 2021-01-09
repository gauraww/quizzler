import 'package:flutter/cupertino.dart';

import 'question.dart';

class Quizbrain {
  int questionNum = 0;
  List<Question> _questionbank = [
    Question('The five rings on the Olympic flag are interlocking?', false),
    Question('Mount Kilimanjaro is the highest mountain in the world?', false),
    Question('A group of swans is known as a bevy?', true),
    Question('Sydney is the capital of Australia?', false),
    Question('Fish can\'t blink?', true),
    Question('Some cats are actually allergic to humans?', true),
    Question('You can lead a cow down stairs but not up stairs?', false),
    Question('Approximately one quarter of human bones are in the feet?', true),
    Question('A slug\'s blood is green?', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\"?', true),
    Question('It is illegal to pee in the Ocean in Portugal?', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times?',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place?',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant?',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres?',
        true),
    Question('Google was originally called \"Backrub\"?', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog?',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat?',
        true),
  ];

  List<Icon> scoreKeeper = [];

  void nextQuestion() {
    if (questionNum < _questionbank.length - 1) {
      questionNum++;
    }
  }

  String getQuestion() {
    return _questionbank[questionNum].questionText;
  }

  bool getCorrectAns() {
    return _questionbank[questionNum].questionAnswer;
  }

  bool isFinished() {
    if (questionNum >= _questionbank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  int totalQuestions() {
    return _questionbank.length;
  }

  void reset() {
    questionNum = 0;
    scoreKeeper = [];
  }
}
