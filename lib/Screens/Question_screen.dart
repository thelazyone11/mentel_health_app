import 'package:flutter/material.dart';
import 'package:mentel_health_app/const.dart';
import 'package:mentel_health_app/model/question_model.dart';
import 'package:mentel_health_app/Screens/result_screeen.dart';

class QuestionsScreen extends StatefulWidget {
  QuestionsScreen({Key? key, required this.catQuestions}) : super(key: key);
  final List<QuestionModel> catQuestions;

  @override
  _QuestionsScreenState createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  List<QuestionModel> questions = [];
  int index = 0;

  @override
  void initState() {
    questions = widget.catQuestions;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.pink[100],
        body: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          QuestionHolderWidget(
            question: questions[index].question,
          ),
          Container(
            height: 20,
            alignment: Alignment.center,
            child: Text("${index + 1}/${questions.length}",
                style: TextStyle(fontSize: 20)),
          ),
          Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 1,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all<double>(15.0),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                          StadiumBorder()),
                    ),
                    onPressed: () {
                      if (index == questions.length - 1) {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) => ResultScreen(
                                      reviewQuestions: questions,
                                    )),
                            (Route<dynamic> route) => false);
                      } else {
                        setState(() {
                          index++;
                        });
                      }
                    },
                    child: Text(optionButtonName1,
                        style:
                            TextStyle(color: Color(0xffC52726), fontSize: 25)),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all<double>(15.0),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color(0xFFF8BBD0).withOpacity(0.4)),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                          StadiumBorder()),
                    ),
                    onPressed: () {
                      if (index == questions.length - 1) {
                        // questions[index].isYes = 1;
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) => ResultScreen(
                                      reviewQuestions: questions,
                                    )),
                            (Route<dynamic> route) => false);
                      } else {
                        setState(() {
                          questions[index].option2 = 1;
                          index++;
                        });
                      }
                    },
                    child: Text(optionButtonName2,
                        style: TextStyle(color: Colors.red, fontSize: 25)),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all<double>(15.0),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xFFF8BBD0)),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                          StadiumBorder()),
                    ),
                    onPressed: () {
                      if (index == questions.length - 1) {
                        // questions[index].isYes = 1;
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) => ResultScreen(
                                      reviewQuestions: questions,
                                    )),
                            (Route<dynamic> route) => false);
                      } else {
                        setState(() {
                          questions[index].option3 = 1;
                          index++;
                        });
                      }
                    },
                    child: Text(optionButtonName3,
                        style: TextStyle(color: Colors.red, fontSize: 25)),
                  ),
                ],
              )),
        ],
      ),
    ));
  }
}

class QuestionHolderWidget extends StatelessWidget {
  const QuestionHolderWidget({Key? key, required this.question})
      : super(key: key);
  final String question;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.7,
        width: double.infinity,
        alignment: Alignment.center,
        color: Colors.pink[100],
        child: Container(
          margin: EdgeInsets.all(30),
          alignment: Alignment.center,
          decoration: BoxDecoration(border: Border.all(width: 4)),
          height: MediaQuery.of(context).size.height * 0.6,
          width: double.infinity,
          child: Text(
            question,
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 28),
            textAlign: TextAlign.center,
          ),
        ));
  }
}
