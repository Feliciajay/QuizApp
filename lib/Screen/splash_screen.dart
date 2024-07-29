import 'package:flutter/material.dart';
import 'package:quizapp/Screen/quiz_screen.dart';

import 'package:quizapp/app_color.dart';

class QuizSplashScreen extends StatefulWidget {
  const QuizSplashScreen({super.key});

  @override
  State<QuizSplashScreen> createState() => _QuizSplashScreenState();
}

class _QuizSplashScreenState extends State<QuizSplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.lightBlue,
              Colors.blue,
              AppColor.darkBlue,
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.asset('assets/images/balloon2.png'),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Welcome to our',
                style: TextStyle(
                  color: AppColor.lightGrey,
                  fontSize: 18,
                ),
              ),
              const Text(
                'Quiz App',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const QuizScreen()));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 25),
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width - 100,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Text(
                      'Continue',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
