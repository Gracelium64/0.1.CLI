import 'dart:io';
import 'functions_grace64.dart';
import 'create_task.dart';
import '../classes/task.dart';

void mainMenu() {

  String? userInput;
  String? userInputSub;
  int? userInputInt;


  List<Task> dailyTasks = [];
  List<Task> weeklyTasks = [];
  List<Task> deadlineTasks = [];
  List<Task> questTasks = [];
  int taskIdCounter = 0;
  int dailyCompleted = 0;
  int weeklyCompleted = 0;
  int deadlineCompleted = 0;
  int questCompleted = 0;

  mainMenuCall();
  while (userInput == null) {
  userInput = userInputFunction();
  switch (userInput) {
    // // // Show lists // // // 
    case 's':
      userInput = null;
      clearConsole();
      listsMenuCall();
      userInputSub = userInputFunction();
      switch (userInputSub) {
        // // // Show daily tasks // // // 
        case 'd':
          userInputSub = null;
          clearConsole();
          print('Available daily tasks:');
          print('TaskId - Task');
          for (int i = 0; i < dailyTasks.length; i++) {
            print('${dailyTasks[i].taskId}      - ${dailyTasks[i].taskDesctiption}');
          }
          lineBreak();
          mainMenuCall();
        // // // Show weekly tasks // // // 
        case 'w':
          userInputSub = null;
          clearConsole();
          print('Available weekly tasks:');
          print('TaskId - Task - Day of the week');
          for (int i = 0; i < weeklyTasks.length; i++) {
            print('${weeklyTasks[i].taskId}      - ${weeklyTasks[i].taskDesctiption} - ${weeklyTasks[i].dayOfWeek}');
          }
          lineBreak();
          mainMenuCall();
        // // // Show deadline tasks // // // 
        case 'D':
          userInputSub = null;
          clearConsole();
          print('Available deadline tasks:');
          print('TaskId - Task - Deadline');
          for (int i = 0; i < deadlineTasks.length; i++) {
            print('${deadlineTasks[i].taskId}      - ${deadlineTasks[i].taskDesctiption} - ${deadlineTasks[i].deadlineDate} ${deadlineTasks[i].deadlineTime}');
          }
          lineBreak();
          mainMenuCall();
        // // // Show main quest tasks // // // 
        case 'm':
          userInputSub = null;
          clearConsole();
          print('Available main quest tasks:');
          print('TaskId - Task');
          for (int i = 0; i < questTasks.length; i++) {
            print('${questTasks[i].taskId}      - ${questTasks[i].taskDesctiption}');
          }
          lineBreak();
          mainMenuCall();
        // // // Back to main menu // // // 
        case 'x':
          userInputSub = null;
          clearConsole();
          mainMenuCall();
        // // // null check // // // 
        default:
          userInputSub = null;
          clearConsole();
          print('Please enter a valid input');
          lineBreak();
          mainMenuCall();
        }
    // // // Add task // // // 
    case 'a':
      userInput = null;
      clearConsole();
      addMenuCall();
      userInputSub = userInputFunction();
      switch (userInputSub) {
        // // // Add daily task // // // 
        case 'd':
          userInputSub = null;
          clearConsole();
          print('Enter task decription and press "enter"');
          dailyTasks.add(createDailyTask(taskIdCounter, stdin.readLineSync() ?? ''));
          taskIdCounter++;
          clearConsole();
          print('Task added!');
          lineBreak();
          mainMenuCall();
        // // // Add weekly task // // // 
        case 'w':
          clearConsole();
          print('Enter task description and press "enter", enter day of the week and then press "enter"');
          userInputSub = null;
          weeklyTasks.add(createWeeklyTask(taskIdCounter, stdin.readLineSync()?? '', stdin.readLineSync()));
          taskIdCounter++;
          clearConsole();
          print('Task added!');
          lineBreak();
          mainMenuCall();
        // // // Add deadline task // // // 
        case 'D':
          clearConsole();
          print('Enter task description and press "enter", enter deadline date and press "enter", enter deadline time and press "enter"');
          userInputSub = null;
          deadlineTasks.add(createDeadlineTask(taskIdCounter, stdin.readLineSync()?? '', stdin.readLineSync() ?? '', stdin.readLineSync() ?? ''));
          taskIdCounter++;
          clearConsole();
          print('Task added!');
          lineBreak();
          mainMenuCall();
        // // // Add main quest task // // // 
        case 'm':
          clearConsole();
          print('Enter task description and press "enter"');
          userInputSub = null;
          questTasks.add(createQuestTask(taskIdCounter, stdin.readLineSync() ?? ''));
          taskIdCounter++;
          clearConsole();
          print('Task added!');
          lineBreak();
          mainMenuCall();
        // // // Back to main menu // // // 
        case 'x':
          userInputSub = null;
          clearConsole();
          mainMenuCall();
        // // // null check // // // 
        default:
          userInputSub = null;
          clearConsole();
          print('Please enter a valid input');
          lineBreak();
          mainMenuCall();
      }
    // // // Complete a task // // // 
    case 'c':
      userInput = null;
      clearConsole();
      completeMenuCall();
      userInputSub = userInputFunction();
      switch (userInputSub) {
        // // // Show daily tasks // // // 
        case 'd':
          userInputSub = null;
          clearConsole();
          print('Available daily tasks:');
          print('TaskId - Task');
          for (int i = 0; i < dailyTasks.length; i++) {
            print('${dailyTasks[i].taskId}      - ${dailyTasks[i].taskDesctiption}');
          }
          lineBreak();
          // // // Complete daily task // // //
          userInputInt = int.tryParse(stdin.readLineSync() ?? '');
          for (int i = 0; i < dailyTasks.length; i++) {
            if (dailyTasks[i].taskId == userInputInt) {
              dailyTasks.remove(dailyTasks[i]);
              dailyCompleted++;
            }
            clearConsole();
            print('Task completed!');
            lineBreak();
            mainMenuCall();
          }
        // // // Show weekly tasks // // // 
        case 'w':
          userInputSub = null;
          clearConsole();
          print('Available weekly tasks:');
          print('TaskId - Task - Day of the week');
          for (int i = 0; i < weeklyTasks.length; i++) {
            print('${weeklyTasks[i].taskId}      - ${weeklyTasks[i].taskDesctiption} - ${weeklyTasks[i].dayOfWeek}');
          }
          lineBreak();
          // // // Complete weekly task // // //
          userInputInt = int.tryParse(stdin.readLineSync() ?? '');
          for (int i = 0; i < weeklyTasks.length; i++) {
            if (weeklyTasks[i].taskId == userInputInt) {
              weeklyTasks.remove(weeklyTasks[i]);
              weeklyCompleted++;
            }
            clearConsole();
            print('Task completed!');
            lineBreak();
            mainMenuCall();
          }
        // // // Show deadline tasks // // // 
        case 'D':
          userInputSub = null;
          clearConsole();
          print('Available deadline tasks:');
          print('TaskId - Task - Deadline');
          for (int i = 0; i < deadlineTasks.length; i++) {
            print('${deadlineTasks[i].taskId}      - ${deadlineTasks[i].taskDesctiption} - ${deadlineTasks[i].deadlineDate} ${deadlineTasks[i].deadlineTime}');
          }
          lineBreak();
          // // // Complete deadline task // // //
          userInputInt = int.tryParse(stdin.readLineSync() ?? '');
          for (int i = 0; i < deadlineTasks.length; i++) {
            if (deadlineTasks[i].taskId == userInputInt) {
              deadlineTasks.remove(deadlineTasks[i]);
              deadlineCompleted++;
            }
            clearConsole();
            print('Task completed!');
            lineBreak();
            mainMenuCall();
          }
        case 'm':
          userInputSub = null;
          clearConsole();
          print('Available main quest tasks:');
          print('TaskId - Task');
          for (int i = 0; i < questTasks.length; i++) {
            print('${questTasks[i].taskId}      - ${questTasks[i].taskDesctiption}');
          }
          lineBreak();
                    // // // Complete quest task // // //
          userInputInt = int.tryParse(stdin.readLineSync() ?? '');
          for (int i = 0; i < questTasks.length; i++) {
            if (questTasks[i].taskId == userInputInt) {
              questTasks.remove(questTasks[i]);
              questCompleted++;
            }
            clearConsole();
            print('Task completed!');
            lineBreak();
            mainMenuCall();
          }
        case 'x':
          userInputSub = null;
          clearConsole();
          mainMenuCall();
        // // // null check // // // 
        default:
          userInputSub = null;
          clearConsole();
          print('Please enter a valid input');
          lineBreak();
          mainMenuCall();
        }
    // // // Delete a task // // //
    case 'd':
      userInput = null;
      clearConsole();
      completeMenuCall();
      userInputSub = userInputFunction();
      switch (userInputSub) {
        // // // Show daily tasks // // // 
        case 'd':
          userInputSub = null;
          clearConsole();
          print('Available daily tasks:');
          print('TaskId - Task');
          for (int i = 0; i < dailyTasks.length; i++) {
            print('${dailyTasks[i].taskId}      - ${dailyTasks[i].taskDesctiption}');
          }
          lineBreak();
          // // // Delete daily task // // //
          userInputInt = int.tryParse(stdin.readLineSync() ?? '');
          for (int i = 0; i < dailyTasks.length; i++) {
            if (dailyTasks[i].taskId == userInputInt) {
              dailyTasks.remove(dailyTasks[i]);
            }
            clearConsole();
            print('Task deleted!');
            lineBreak();
            mainMenuCall();
          }
        // // // Show weekly tasks // // // 
        case 'w':
          userInputSub = null;
          clearConsole();
          print('Available weekly tasks:');
          print('TaskId - Task - Day of the week');
          for (int i = 0; i < weeklyTasks.length; i++) {
            print('${weeklyTasks[i].taskId}      - ${weeklyTasks[i].taskDesctiption} - ${weeklyTasks[i].dayOfWeek}');
          }
          lineBreak();
          // // // Delete weekly task // // //
          userInputInt = int.tryParse(stdin.readLineSync() ?? '');
          for (int i = 0; i < weeklyTasks.length; i++) {
            if (weeklyTasks[i].taskId == userInputInt) {
              weeklyTasks.remove(weeklyTasks[i]);
            }
            clearConsole();
            print('Task deleted!');
            lineBreak();
            mainMenuCall();
          }
        // // // Show deadline tasks // // // 
        case 'D':
          userInputSub = null;
          clearConsole();
          print('Available deadline tasks:');
          print('TaskId - Task - Deadline');
          for (int i = 0; i < deadlineTasks.length; i++) {
            print('${deadlineTasks[i].taskId}      - ${deadlineTasks[i].taskDesctiption} - ${deadlineTasks[i].deadlineDate} ${deadlineTasks[i].deadlineTime}');
          }
          lineBreak();
          // // // Delete deadline task // // //
          userInputInt = int.tryParse(stdin.readLineSync() ?? '');
          for (int i = 0; i < deadlineTasks.length; i++) {
            if (deadlineTasks[i].taskId == userInputInt) {
              deadlineTasks.remove(deadlineTasks[i]);
            }
            clearConsole();
            print('Task deleted!');
            lineBreak();
            mainMenuCall();
          }
        case 'm':
          userInputSub = null;
          clearConsole();
          print('Available main quest tasks:');
          print('TaskId - Task');
          for (int i = 0; i < questTasks.length; i++) {
            print('${questTasks[i].taskId}      - ${questTasks[i].taskDesctiption}');
          }
          lineBreak();
                    // // // Delete quest task // // //
          userInputInt = int.tryParse(stdin.readLineSync() ?? '');
          for (int i = 0; i < questTasks.length; i++) {
            if (questTasks[i].taskId == userInputInt) {
              questTasks.remove(questTasks[i]);
            }
            clearConsole();
            print('Task deleted!');
            lineBreak();
            mainMenuCall();
          }
        case 'x':
          userInputSub = null;
          clearConsole();
          mainMenuCall();
        // // // null check // // // 
        default:
          userInputSub = null;
          clearConsole();
          print('Please enter a valid input');
          lineBreak();
          mainMenuCall();
        }
    // // // Exit
    case 'e':
      clearConsole();
      print('Ok not bye bye than');

    // // // null check
    default:
    userInput = null;
    clearConsole();
    print('Please enter a valid input');
    lineBreak();
    mainMenuCall();
  }
 }
  return null;
}



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