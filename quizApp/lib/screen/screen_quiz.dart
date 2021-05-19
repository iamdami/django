import 'package:flutter/material.dart';
import 'package:quiz_app/model/model_quiz.dart';

class QuizScreen extends StatefulWidget {
  List<Quiz> quizzes;
  QuizScreen({this.quizzes});
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<int> _answers = [-1, -1, -1];
  List<bool> _answerState = [false, false, false, false];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.deepPurple),
          ),
          width: width * 0.85,
          height: height * 0.5,
          child: Swiper(
            physics: NaverScrollableScrollPhysics(),
            loop: false,
            itemCount: widget.quizzes.length,
            itemBuilder: (BuildContext context, int index) {
              return _buildQuizCard (widget.quizzes[index], width, height);
            }
          ),
        ),
      ),
    ));
  }

  Widget _buildQuizCard(Quiz quiz, double width, double height) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(0, width * 0.024, 0, width * 0.024),
            child: Text('0' + (_currentIndex + 1).toString() + '.',
            style: TextStyle(
              fontSize: width * 0.06, fontWeight: FontWeight.bold),

            ),
          ),
          Container()
        ],
      ),
    )
  }
}