import 'package:flutter/material.dart';
import 'package:quizapp/Screen/splash_screen.dart';
import 'package:quizapp/app_color.dart';

class ResultScreen extends StatelessWidget {
  final int correctAnswer;
  final int incorrectAnswer;
  final int totalQuestion;
  const ResultScreen(
      {super.key,
      required this.correctAnswer,
      required this.incorrectAnswer,
      required this.totalQuestion});

  @override
  Widget build(BuildContext context) {
    double correctPercentage = (correctAnswer / totalQuestion * 100);

    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          colors: [
            Colors.blue,
            AppColor.blue,
            AppColor.darkBlue,
          ],
        ),
      ),
      child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 300,
            ),
            const Text(
              'Congratulations',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              '${correctPercentage.toStringAsFixed(1)}%',
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              'Correct Answer : $correctAnswer',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            Text(
              'Incorrect Answer : $incorrectAnswer',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const QuizSplashScreen()));
              },
              child: const Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
