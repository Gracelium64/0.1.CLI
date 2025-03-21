import 'functions/functions_grace64.dart';
import 'classes/task.dart';
import 'functions/create_task.dart';
import 'dart:io';

void main() {

  clearConsole();

  // List<Task> [];

  List<Task> dailyTasks = [];
  List<Task> weeklyTasks = [];
  List<Task> deadlineTasks = [];
  List<Task> questTasks = [];
  int taskIdCounter = 0;


  dailyTasks.add(createDailyTask(taskIdCounter, stdin.readLineSync() ?? ''));
  taskIdCounter++;
  print('${dailyTasks})');

  weeklyTasks.add(createWeeklyTask(taskIdCounter, stdin.readLineSync()?? '', stdin.readLineSync()));
  taskIdCounter++;
  print('${weeklyTasks})');
  
  deadlineTasks.add(createDeadlineTask(taskIdCounter, stdin.readLineSync()?? '', stdin.readLineSync() ?? '', stdin.readLineSync() ?? ''));
  taskIdCounter++;
  print('${deadlineTasks})');

  questTasks.add(createQuestTask(taskIdCounter, stdin.readLineSync() ?? ''));
  taskIdCounter++;
  print('${questTasks})');


}