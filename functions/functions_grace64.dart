import 'dart:io';
import 'dart:math';

void clearConsole() => print("\x1B[2J");
void clearConsole2() => print("\x1B[2J\x1B[0;0H");

void lineBreak() => print('');

//User Input int
int? userInputint = int.tryParse(stdin.readLineSync() ?? '');


//C2F
double tempCtoF(int a) => (9 / 5) * a + 32;
double tempFtoC(int a) => (5 / 9) * (a - 32);

//User Input Number
// double userInputNumber(String? a) {
// print('Welcome to BMI Calculator');
//     while (a == null) {
//     print('How much do you weigh? (Kilograms!)');
//     print('No freedom units please');
//     a = double.tryParse(stdin.readLineSync() ?? '');
//       if (a == null) {
//         print('');
//         print('This is not a number');
//         print('Please try again');
//         print('');
//       }
//   }
// }

//Sum of 2 numbers
double? addTwo(double a, double b) => a + b;

//Sum of 3 numbers
double? addThree(double a, double b, double c) => a + b + c;

//Subtract a b
double? subtractTwo(double a, double b) => a - b;

//Multiply a b
double? multiplyTwo(double a, double b) => a * b;

//Divide a b
double? divideTwo(double a, double b) => a / b;


//Geometeri
//Circle
// A
double circleAreaCalculator(double input) => 3.14 * (input * input);
//d
double circleDiameterCalculator (double input) => 2 * input;
//u
double circlePerimeterCalculator(double input) => 2 * 3.14 * input;
//Square
//A
double sqrAreaCalculator(double input) => input * input;
//d
double sqrDiagonalCalculator(double input) => sqrt(2) * input;
//u
double sqrPerimeterCalculator(double input) => input * 4;
//Cube
//A
double cubeAreaCalculator(double input) => 6 * (input * input);
//V
double cubeVolumaCalculator(double input) => input * input * input;
//Sphere
//A
double sphereAreaCalculator(double input) => 4 * 3.14 * (input * input);
//V
double sphereVolumeCalculator(double input) => (4 / 3) * 3.14 * (input * input * input);




//Text Length
int textLength(String text) {
  int result = text.length;
  return result;
}


//Letter counter
  // // // // String wordInput = '';
  // // // // String letterInput = '';
  // // // // int counter = 0;
  
  // // // // wordInput = 'Example';
  // // // // letterInput = 'x';
  // // // // printMeCounter(counter, wordInput, letterInput);

int letterCounter(String word, String letter) {
    int counter = 0;
    for (int i = 0; i < word.length; i++) {
      String currentLetter = word[i];
      if (currentLetter == letter) {
      counter++;
      }
    }
    return counter;
  }

  void printMeCounter(int printer, String wInput, String lInput) {
  printer = letterCounter(wInput, lInput);
    print('The letter "$lInput" appears $printer times in the input "$wInput"');
    lineBreak();
  }

//Letter checker
  // // // // String wordInput = '';
  // // // // String letterInput = '';
  // // // // bool appearsIn = true;

  // // // // wordInput = 'Word';
  // // // // letterInput = 'o';
  // // // // printMe(appearsIn, wordInput, letterInput);

bool letterChecker(String word, String letter) {
  if (word.contains(letter)) {
    return true;
  } else {
    return false;
  }
}

void printMeChecker(bool printer, String wInput, String lInput) {
  printer = letterChecker(wInput, lInput);
  if (printer == true) {
    print('The letter "$lInput" appears in the word "$wInput"');
    lineBreak();
  } else {
    print('The letter "$lInput" does not appear in the word "$wInput"');
    lineBreak();
  }
}

//wordToList
List<String>? wordToList(String wordInput) {
  List<String> myList = [];
  for (var i = 0; i < wordInput.length; i++) {
    myList.add(wordInput[i]);
  }
    return myList;
}

int wordToListCounter(String wordInput) {
  List<String> myList = [];
  for (var i = 0; i < wordInput.length; i++) {
    myList.add(wordInput[i]);
  }
    return myList.length;
}

String printCount(String a) {
  return '$a -> ${wordToListCounter(a)}';
}

//Vowel Checker
int vowelChecker(String text) {
  int result = 0;
  for (int i = 0; i < text.length; i++) {
    if (text[i].contains('a')) {
      result++;
    } else if (text[i].contains('e')) {
      result++;
    } else if (text[i].contains('i')) {
      result++;
    } else if (text[i].contains('o')) {
      result++;
    } else if (text[i].contains('u')) {
      result++;
    } else if (text[i].contains('A')) {
      result++;
    } else if (text[i].contains('E')) {
      result++;
    } else if (text[i].contains('I')) {
      result++;
    } else if (text[i].contains('O')) {
      result++;
    } else if (text[i].contains('U')) {
      result++;
    }
  }
    return result;
  }

//Number polarity checker

// ignore: body_might_complete_normally_nullable
bool? numberPolarity(double x) {
    if (x > 0) {
      print('The number "$x" is positive');
    } else if (x < 0) {
      print('The number "$x" is negative');
    } else {
      print('The number is 0');
    }
}

  //Bigger number comparison
  double biggerNumber(double a, double b) {
  double c = 0;
  if (a > b) {
    c = a;
  } else {
    c = b;
  }
  return c;
}

//Even number checker
bool evenNumber(int a) {
  bool even = true;
  if (a % 2 == 0) {
    even = true;
  } else {
    even = false;
  }
  return even;
}

//Sum of List
int sumList(List<int> a) {
  int addedUp = 0;
  for (int i = 0; i < a.length; i++) {
    addedUp += a[i];
  }
  return addedUp;
}

//Average of List
double averageList(List<double> a) {
  double result = 0;
    for (int i = 0; i < a.length; i++) {
    result += a[i];
  }
  result = (result / a.length);
  return result;
}

//Number inverter
double numberInverter(int a) => a * -1;

void bunny() {
  print(r'''                                                                                        
                                              ▒███████
          ██                                 ████     ██▒
        ▒█▒ ██▒                           ████   █████ ██▒
        ██    ███▓                      ███   ████████  ██
      ▓██   ▓  ███                   ███▓  ███████████ ██░
      ███    ▓▓  ███                ███  ▓███      ███ ██
      ▓█▒     ▓▓▓  ▒██            ███  ▒▒██     ░░  ██ ██
      ██  ░    ▓▓▓▓  ███         ░██  ▓░██     ░    ██ ██░
      ██  ░     ▒▒▒▓▓  ██       ███ ░▓░██    ▒░    ░█  ██ 
      ░██  ░      ░▒▒▓▓  ██     ░██  ▓▒░█           ██ ▒█▒
      ░██          ▓▒░▒▓  ██    ███ ▓▒░██    ░      ██ ██ 
      ██  ░       ▒▓▓▓▓▓  ██  ▓██  ▓░░█           ██  █▓
      ██  ░           ▒▓▓ ██████░ ▓▒░▒█          ▓██ ██░
      ███ ░       ░            █  ▓▒░█          ░██ ▒█░
      ▓██            ▒            ▒▒░█         ▓██  █░
      ▒██  ▒▒    ▓▓▓▓▓         ░▓▓▒░▓█    ░   ███  █▓
        ██  ▒   ▓▓▓▒▒       █▓  ▓▒▒▒░█       ████  █▒
          ██   ▓▓▒▒▒▒▒ ▒   ███  ▓▒░░░░▒▓    ░███  ██
          ███  ▒▓▒▒    ▓  █████ ▓▒░░░░░░▒▓ ▒▓██   ██
          ▓██  ▒▓▓▓▓▓▓▓  ███████▓░▒▓▓▒░░░░▒▓▓▓  ░██
          ███  ░       ▓▓█████████▒   ▒░░░░░▒▒ ███
        ░██  ░▓▓█  █   ██████████▒▓▓▓▓▓▓▓▒▒░▓  █▓
        ███  ▓▓▒░█       ██████████       ░▓░▒░ ██
      ▓███  ▓▓▒░░▓       █████████    ██    ▒░▓ ░█▒
  ▒██████     ░▓█████▓▓ ▓███████         █ ▓░░▓░ ██                              
░████████  ███▓▓   █████  ▓ ░███░     ██▓▒░░▒░▓  █▒                             
      ██  ▓█████▒ ░ ███░    ▒██████▓▓▒░░░░▒▓▓▓▓  █                             
    █████     ██████░ ███ █████    ░░░███▓▒       ██                            
  ███░  ███▒  █▓█████        ░███▒   ██▓   █▓▒   ░█
  █░ ██▒  ███    ▒█████████▓█████████   █████   ██░
    ▒▒   ███           ██████████████████▓     █░██
      ▓██▒      ░▒░                          ██░░
      ███       ░   ░████████▓░       ░▒▓▓▒▒   ██
    ██▒     ▓▓██████████████████████████████▓  ██
    ██▓     ▒▓░ █████████████████████████████▒   ██░
  ▒██ ░▓   ▒▓▒▓░ ░███████████████████████████▒    █▓
  ▓█  ▓▓    ▓░░ ██████████████████████████▓▒░▓  ▓  █▒
  ██ ▓▓██   ▓▒░░░░▒  █████████████████████▓░▒▓ ▒▓▒ ██
▒██ █████  ▓▓░░░░░▒▒█░ ████████████████░ ░░▓  ███  █▒
  ██ ░▓▒██▒  ▓▒░░░▒  ░▒▒█▓ ██████▓██▓██░▒░░▒▓  ███  █▒
  ▓█  ▓▒▓▒ ▒  ▓▒░░░▒░   ░░  ██  ▒░▓▒    ░░▒▓  ████  █▒
  ▒██  █░  ▒█  ▓▒░░▒▒▒    ▒    ░▒     ▒▒▒▒▓  ▒░███ ░█▒
  ▓██    ░     ▓▓▒▒░▒▒▒  █░   █   ▒▓▓▒▒▒▒   ▓ ▒█  ██
    ██       ▒    ▓▓▓░░░▒▒  █████ ░▓▒▒▓▓▓▓         ██
    ░██     ▓▓ ▓▓    ▓███▓         ░▓       ▓▓   ███
      ████        ██  ██ ██▒ ███ ██▓ ██ ██      ██░
        ░▓███████   ▒ ██▒    ███  █ ███    █████▒
                █████     ████░███     █████
                ░  ▒█████▓      
''');
}

void bunny2(){
  print(r'''
                                                                                        
                                                                                        
                                                                                        
                                                  ░▒▓░░█▓
                  ▓██                           ░▒    ▒▒  ▓
                █   ██                       ▒▓  ▓██▓▒▓█  █
                █   ░ ▓▓                   ▒▓  █████▓▒▒▓▒ █
                █   ░▓░  █                ▒  ░██░     ▒▓▒ █
                ▒ ░  ░▓▒▒ ░█▒           ▒░ ▒░██    ▒░ ░▓▒ █
                ▒  ▒    ▒▓▒░ ▒▓         ▓  ▒░██   ▒▒░  ░█  █
                █  ▒     ▒▒▒▓  █░      ▒  ▒░▒█   ░░ ░  ▒█ ▒█
                █  ▒░     ▒░░▒  █░     █ ▒░ █    ░░░   █▓ █
                █  ▒░     ▓▒▒▒▓  █    ▓  ▒ ▒█   ▒░    ▒█ ▓▒
                ▒░ ▒░▒    ░ ░▒▓█ ██▓▒██ ▒░ █    ░░░  ░█▒ █
                █ ▒░ ░   ░             ▓░░█    ░    ██ ▓░
                █ ░       ░▓ █░        ▒░▓░   ▒░  ░█▓ ▓▒
                █  ▓   ▒█▓▒▓      ░  ▓▒▒ ▓  ░    ▓█▓ ▓▒
                █▓   ▒▓▒░░░     ██  ▒░░░ ▒     ███  █▒
                ██  ▒▒░░░░░▒ ▒▓█▓▒ ▒░░░░░░▓  ▓▓█░  █░
                ░█  ▒████▓░ ▒▓▓▒▒▒▓░░▒▒▒░░░░▒▓▓   █▒
                ▓  ▒      ▓▓▓▒▒▒▒▒▒▒░  ░░░░░░░ ▒█▓
              ░█  ░▒█  █ █ █▓▒▒▒▒▒▒▓░█████▓▒░▒▒ █░
            ▒█  ▓▒░▒       ▓▒▒▒▒▒██        ░░▓ █▒
            ▒█   ░░░░▒▒     █▒▒▒▒▓█       ░ ░░▒  █
        ▓    ░ ░░░   ▓██████ ███▓▒       █▒░░░░▓ ▓█
          ░▒▓█░ ▒▓▓░     ▒▒░     █████▓▓░░ ░░░░▓█ █░
          ▒▒▓█   ░█▓▓▓▓▒▒███ ███▒    ▓▓▓▓▒░   ░  ░▓ 
          ░  ▒▓██  ▓▓▓▓▓▒       ░░▒▒▒  ▓▒▒  ▒▒░   █▓ 
        ░░░   ▓██    ▒▓██████▓▒▒▒▒▒▓▓▓   ▓███   █░
            ░██   ░▒░      ▒▒▓▓▓▓▓██████▓    ███▒
            ░█     ░ ░▒▒▒░                 ░  ▓█
          ▒█    ▒░░▒▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒▒▒▒▒▓█▓ ▒█
          ▒▓     ▓▒░▒▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▒▒▒▒▒░░ ░█░
        ░█ ▒░   ▓░▒░ ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓█▓   █▒
        █  ▒▒   ▒░  ▓▒▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒  ▒ ▒░ █░
        █ ▓▓█░  ▓░░  ░  ▒▓░▒▒▒▒▒▒▒▒▒▒▒▒▒░▒▓ ░▒ ▒▓░ █
        █ █▓▓▓▓ ░▓░░░░░░▒  ▓▒▒▒▒▒▒▒▒▒▒▓▓▓░ ░▒▒ █▓█ █▓
        █  ▓░▒▒  ▒▒░░░░  ░▒█ ░▓▓▒▒▒░▓ ▒▒  ░▒▒ ░█▒█ ▓▓
        ▒▒ ▒▒░ ▒░ ▒▒░░░░░   ▒ ░░ ░░ ░   ░░▒▒  ▒█▓█ █▓
          ██  ▓▓▒▓  ▓▒░░░░▒░ ░▒░ ░▓   ░▒░░▒▒  ▓░▓▓  █
          ▓      ░   ▒▒░   ░  ▓▓██▒ ▒▒░░▒▓▒     ▒  █░
          ░█   █ █ █░   ▒▓▓▓░       ░▓▒     ██   ██░
            ░██       ██ ██ ██ ███ ██ ██░██    ▒█▒
                ▒▒▓█          █▓▓         ██▓
                      ▓██████░                                     
  ''');
}

void OI() {
  print(r'''
          █
         ███    █
         ███ █ ███
          ████ █████
           ███ ████
            █████           ████
             ███         ███████
             ██        █████████
              ██       █  ██████
              ██       █████████
             ███       █████████         ██
             ███      ███ ██████         ████
             ████     ███  █████  ██   █████
            ██████    ██████████  ████  ███
           ██ ████    ███  ████     ███████
          █████ ███   ███  ████      ███████
        █████████     ███ █████       █████████
       ████████       ███  ████        ████████
      ███████         ███  ████        █████████
    ████████          ███ █ ███         ████████
   ████████          ██████████         █████████
   ███████            ███ █████          ███  ███
  ████████            ████  ███          ████ ███
  ███████             ██    ███          ████████
  ███████             ██  █ ███          ████████
  ███████            ██ ███████          ████████
  ███████            ██ █  ████          ████████
  ████████           ███   ████         █████████
  ████████           ██████████         ███ █████
  █████ ███          ██    ███         ███ █████
  █████████          ██     ██         ███████
  ████ █████         █     ███       █████████
  ██ ████████               ██     ██████████
  ██  ██████████                █████████████
  ██   ██████████████        ████████████ ███
         ████ ███ ██████████████████████  ███
           ██████████████████████████     ██
              █████████████████████       ██
                 █████████████            ██
                  ████                    ██
                  ███                     ██
                   ██
                   ██
                   ██
                   ██
                   ██
                   ██
                   ██
                                                   ''');
}