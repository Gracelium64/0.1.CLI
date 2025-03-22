import '../version_number.dart';
import 'functions_grace64.dart';
import 'dart:io';

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