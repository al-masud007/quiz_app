import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen'; //2nd approch
  // Widget? activeScreen;//1st approch
  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen); //1st approch
  //   super.initState();
  // }
  void switchScreen() {
    setState(
      () {
        activeScreen = 'question-screen'; //2nd approch
      },
    );
  }
  // void switchScreen() {
  //   setState(() {
  //     activeScreen = const QuestionsScreen(); //1st approch
  //   });
  // }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = const QuestionsScreen();
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 96, 38, 197),
                Color.fromARGB(255, 51, 2, 99),
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          // child:activeScreen, //1st approch
          // child: activeScreen == 'start-screeen' //2nd approch
          //     ? StartScreen(switchScreen)
          //     : const QuestionsScreen(),
          child: screenWidget,
        ),
      ),
    );
  }
}
