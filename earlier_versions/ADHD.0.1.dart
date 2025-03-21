import 'dart:io';

void main () {

  String? userInput = null;

  Map<String, String> actionsMenu = {
    '(a)' : 'View List',
    '(b)' : 'Complete a task',
    '(c)' : 'Add a Task',
    '(d)' : 'End program',
  };

  Map<int, String> toDoList = {};
  int taskId = toDoList.length;

// // // // // // // // Splash Screen // // // // // // // // //
        // print("\x1B[2J\x1B[0;0H");
        // print('Initializing');
        // sleep(const Duration(milliseconds: 300));
        // print("\x1B[2J\x1B[0;0H");
        // print('Initializing');
        // sleep(const Duration(milliseconds: 300));
        // print("\x1B[2J\x1B[0;0H");
        // print('Initializing.');
        // sleep(const Duration(milliseconds: 300));
        // print("\x1B[2J\x1B[0;0H");
        // print('Initializing..');
        // sleep(const Duration(milliseconds: 300));
        // print("\x1B[2J\x1B[0;0H");
        // print('Initializing...');
        // sleep(const Duration(milliseconds: 300));
        // print("\x1B[2J\x1B[0;0H");
        // print('Initializing....');
        // sleep(const Duration(milliseconds: 500));
        // print("\x1B[2J\x1B[0;0H");
        // sleep(const Duration(seconds: 2));
        // print('Organic Interface Studios');
        // sleep(const Duration(seconds: 3));
        // print('Attention Deficit oH Dear v0.1');
        // print('Gamify your life');
        // sleep(const Duration(seconds: 3));
        // print("\x1B[2J\x1B[0;0H");
        // sleep(const Duration(seconds: 2));

// // // // // // // // // Main Menu // // // // // // // // //
  print("\x1B[2J\x1B[0;0H");
  print('Hello adventurer, what would you like to do?');
  print('');
  print('Main Menu');
  sleep(const Duration(milliseconds: 500));

// // // // // // // // // Actions Menu // // // // // // // //
     for (final allPrint in actionsMenu.entries) {
        print('${allPrint.key}: ${allPrint.value}');
     }

      while (userInput == null) {
      userInput = stdin.readLineSync();
          if (userInput == null) {
          print('a');
          } else {
          switch (userInput) {
    case 'a' : 
      userInput = null;
      print("\x1B[2J\x1B[0;0H");
      sleep(const Duration(milliseconds: 300));
      print('Quests available:');
      print('');
          for (final allPrint in toDoList.entries)
          {print('${allPrint.key}: ${allPrint.value}');
          }
      print('');
      print('');
          for (final allPrint in actionsMenu.entries) {
          print('${allPrint.key}: ${allPrint.value}');
          }
    case 'b' :  
      userInput = null;
          if (toDoList.length < 1) {
      sleep(const Duration(milliseconds: 300));
      print("\x1B[2J\x1B[0;0H");
      print('No quests available to complete!');
      sleep(const Duration(milliseconds: 2500));
      print("\x1B[2J\x1B[0;0H");
          for (final allPrint in actionsMenu.entries) {
          print('${allPrint.key}: ${allPrint.value}');
          };
      } else{
          print("\x1B[2J\x1B[0;0H");
          sleep(const Duration(milliseconds: 300));
          print('Which good fortune have you brought from your adventures?');
          print('Which task have you completed?');
          print('');
            for (final allPrint in toDoList.entries) { 
                print('${allPrint.key}: ${allPrint.value}');
            }
          print('');
          print('');
            int? idDelete = int.tryParse(stdin.readLineSync() ?? '');
              if (toDoList.containsKey(idDelete)) {
                  toDoList.remove(idDelete);
// {
// https://stackoverflow.com/questions/79495595/automatically-assigning-mapint-string-key-after-deletion-of-another-key-in-da/79495638#79495638
                  final Map<int, String> newTodoList = {};
                  int newIndex = 1;
                  toDoList.forEach((key, value) {
                  newTodoList[newIndex] = value;
                  newIndex++;
                  }
                );
                  toDoList.clear();
                  toDoList.addAll(newTodoList);     
//crude implemintation         
// }
                  print('Good Job!');
                  sleep(const Duration(milliseconds: 1000));
                  print("\x1B[2J\x1B[0;0H");
              for (final allPrint in actionsMenu.entries) {
                print('${allPrint.key}: ${allPrint.value}');
              } ;
            } else {print('Enter a valid entry number, press "b" to continue');
          }
        }
    case 'c' :  
      userInput = null;
      print("\x1B[2J\x1B[0;0H");
      sleep(const Duration(milliseconds: 300));
      print('Enter name of new adventure');
      print('');
        if (taskId <= toDoList.length) {
          ++taskId;
        } 
        String task = stdin.readLineSync()!;
        toDoList[taskId] = task;
      sleep(const Duration(milliseconds: 300));
      print("\x1B[2J\x1B[0;0H");
      print('Quest added!');
      sleep(const Duration(milliseconds: 1000));
      print("\x1B[2J\x1B[0;0H");
              for (final allPrint in actionsMenu.entries) {
                print('${allPrint.key}: ${allPrint.value}');
              } 
// {
// https://stackoverflow.com/questions/79495595/automatically-assigning-mapint-string-key-after-deletion-of-another-key-in-da/79495638#79495638
                  final Map<int, String> newTodoList = {};
                  int newIndex = 1;
                  toDoList.forEach((key, value) {
                  newTodoList[newIndex] = value;
                  newIndex++;
                  }
                );
                  toDoList.clear();
                  toDoList.addAll(newTodoList);     
//crude implemintation         
// }
    case 'd' : print("\x1B[2J\x1B[0;0H");
      sleep(const Duration(milliseconds: 300));
      print('Ok now bye bye then!');
      sleep(const Duration(seconds: 2));
      print("\x1B[2J\x1B[0;0H");
    default : userInput = null;
      print('***Error***');
      print('Press "a" to continue');
      }
    }
  }
}


                    //                                                   ........:                     
                    //             ...:-                               ....-*##+...-                   
                    //            ..:-...:                          ....=+-.....+:..                   
                    //            ..+#+=...:                      ...-*=........-+..:                  
                    //           ...*#*-++...:                  ...:*=...........#...                  
                    //           ...#+#*-:=+:..::              ..:*=:...=**+-:...#...                  
                    //           ..-*+*#*--:=+:..:            ..-+-:..+**+=---:..#...                  
                    //           ..=*=+*#+--::-+:..:        ...*=::.:+**+-----:..#...                  
                    //           ..=+=++*#*--:::+=..:       ..+-::..+*+=------:.-+..:                  
                    //          ...++-=+**#*-::::=*..:    ...==:::.=*++-------..+:..                   
                    //          ...++-==+**#+-::::-+..:   ..:*-::::#++=------:.:+..:                   
                    //           ..=+-==+**#*-:::::+=..: ...*=:::.+*+=------:..--..-                   
                    //           ..-*====+*##===---=#......-#-::::**+=------...+..:                    
                    //           ..:*===++*##==+*#######*=:+*-:::-*+=------:..+:.:                     
                    //           ...*==+***###+=-+++*******#+-::.+*==-----:..+:..                      
                    //           ...++==*%*+-::--=*****+**=:-::::*+==----...+:..:                      
                    //            ..-*=+*=-::::-+****+:-*+:::::.+*+**=-:...*:.:-                       
                    //             ..+#*-:::::---*++:..=+::::::::+#++-...=*..:-                        
                    //            ...+*-:::---=:--.....-::::::::::=-:::-*-..:-                         
                    //           ...+*=-:::::-+:........:::::::::::::=*:..:-                           
                    //          ...**==*#%%%*-:.........:-++::::::::+:..:-                             
                    //         ...**----**:#*#:.........::-:::::::::==..-                              
                    //        ..:**-::::#**%##*.........:+#%%%*=-:::-+..:                              
                    //      ...:#+-:::::=***#%*........:#**%--#+#-:::+:.:-                             
                    //  .......**++=::....:::-:.......-#####+#+--::::-*..:                             
                    // ........:#=-....:-:.....+-:::..:--+**+-::::::::=+..-                            
                    //   ::::...=*-:.....:::...:+=++......:::::::::::::+-.:                            
                    //     .....:+*=-.......:..:+.....:::::::...::-===+*+..:                           
                    //   ....-:...:#+-:.....:====*=:.....:=:...:-:.:-=*#-.:                            
                    //  ...:...: ...+%+-::.......::.........---....:=*+..:-                            
                    //   ....: ...=##+=+**+=::................::--=+=.:..:                             
                    //       ...-#*#+=-----====-:::::::::--==+*+++#=..:::                              
                    //      ...*#+#+=-::::::.........:::::::::::::-++..-                               
                    //     ..:*++*+::..............................:==..::                             
                    //    ..:*+=+*-:::.............................:-#*..:-                            
                    //   ...#--=+*-:::::.........        ...........-*+#-..-                           
                    //   ..*+::-+*=::::...........       .........::-+=-+-.:-                          
                    //   .:#::..=*+:::::::::........     .........::-+-::+..:                          
                    //  ..:*:...:=#-::::::::.::................:::::-+:..+-.:-                         
                    //   ..#-:..:-*+-:::::--:::..:............::::::+=...-+..:                         
                    //   ..+*-:::--#=-:::::-==--:::..::::::::--:::-+*:...-+..:                         
                    //   ...#+------*=:::::::-=*=::::::-#-==-::::-=#-:...+:.:-                         
                    //   :..:##+=---=#=-::::::-+*::::::**=-:::::-=#=--::=+..:                          
                    //    ..-#**#=--=+#+--:::::-*+-:::-#=-::::--=#+==+-++:.:-                          
                    //    ...=##=+--+-=%%+-:...:*%**##%#+:::-=+##+--+=#...-                            
                    //     .....=#*=*++#-.-:..=..-*..:*:.:-..-:.#*+**+..:-                             
                    //        .........-*-:+:.:=:++...*-:+:.:+-++......:-                              
                    //               :.....:+*+:........:-**=.....--                                   
                    //                 ...........:  :.........::                                      