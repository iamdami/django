import 'package:flutter/material.dart';
import 'package:quiz_app/model/model_quiz.dart';
import 'package:quiz_app/screen/screen_quiz.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Quiz> quizzes = [
    Quiz.fromMap({
      'title': 'test',
      'candidates': ['a', 'b', 'c', 'd'],
      'answer': 0
    }),
    Quiz.fromMap({
      'title': 'test',
      'candidates': ['a', 'b', 'c', 'd'],
      'answer': 0
    }),
    Quiz.fromMap({
      'title': 'test',
      'candidates': ['a', 'b', 'c', 'd'],
      'answer': 0
    }),
  ];
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;

    return WillPopScope(
        onWillPop: () async => false,
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Text('My Quiz App'),
              backgroundColor: Colors.deepPurple,
              leading: Container(),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Image.asset(
                    'images/quiz.jpg',
                    width: width * 0.8,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(width * 0.024),
                ),
                Text(
                  '나를 맞춰바!',
                  style: TextStyle(
                    fontSize: width * 0.065,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '퀴즈 풀기 전 안내사항입니당\n 꼼꼼히 읽고 골라주세여~',
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: EdgeInsets.all(width * 0.048),
                ),
                _buildStep(width, '1. 퀴즈는 랜덤으로 나옵니당'),
                Padding(
                  padding: EdgeInsets.all(width * 0.048),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: width * 0.036),
                  child: Center(
                    child: ButtonTheme(
                      minWidth: width * 0.8,
                      height: height * 0.05,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: RaisedButton(
                        child: Text(
                          '지금 퀴즈 풀기',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.deepPurple,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => QuizScreen(
                                        quizzes: quizzes,
                                      )));
                        },
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Widget _buildStep(double width, String title) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        width * 0.048,
        width * 0.024,
        width * 0.048,
        width * 0.024,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(
            Icons.check_box,
            size: width * 0.04,
          ),
          Padding(
            padding: EdgeInsets.only(right: width * 0.024),
          ),
          Text(title),
        ],
      ),
    );
  }
}
