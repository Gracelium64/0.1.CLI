import '../version_number.dart';
import 'functions_grace64.dart';
import 'dart:io';

void mainMenuCall() {
  // clearConsole();
  print(r'''
  Main menu
  ---------
  (s)how lists
  (a)dd task
  (c)omlete task
  (d)elete task
  (e)xit''');
}

void listsMenuCall() {
  print(r'''
Lists menu
----------
(d)aily tasks
(w)eekly tasks
(D)eadline task
(m)ain quest task
(x) return to main menu
''');
}

void addMenuCall(){
  print(r'''
What type of task do you want to add?
(d)aily tasks
(w)eekly tasks
(D)eadline task
(m)ain quest task
(x) return to main menu
''');
}

void completeMenuCall(){
  print(r'''
What type of task do you want to complete?
(d)aily tasks
(w)eekly tasks
(D)eadline task
(m)ain quest task
(x) return to main menu
''');
}

void deleteMenuCall() {
  print(r'''
What type of task do you want to delete?
(d)aily tasks
(w)eekly tasks
(D)eadline task
(m)ain quest task
(x) return to main menu
''');
}

void splashScreen() {
        clearConsole2();
        print('Initializing');
        sleep(const Duration(milliseconds: 300));
        clearConsole2();
        print('Initializing');
        sleep(const Duration(milliseconds: 300));
        clearConsole2();
        print('Initializing.');
        sleep(const Duration(milliseconds: 300));
        clearConsole2();
        print('Initializing..');
        sleep(const Duration(milliseconds: 300));
        clearConsole2();
        print('Initializing...');
        sleep(const Duration(milliseconds: 300));
        clearConsole2();
        print('Initializing....');
        sleep(const Duration(milliseconds: 500));
        clearConsole2();
        sleep(const Duration(seconds: 2));
        OI();
        sleep(const Duration(seconds: 3));
        print('Organic Interface Studios');
        sleep(const Duration(seconds: 3));
        print('Attention Deficit oH Dear ${versionNumber()}');
        print('Gamify your life');
        sleep(const Duration(seconds: 3));
        clearConsole2();
        sleep(const Duration(seconds: 2));
}