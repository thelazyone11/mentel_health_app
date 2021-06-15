import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mentel_health_app/question_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "BebasNeue"),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            alignment: Alignment.center,
            child: Lottie.asset('assets/brain.json', animate: false),
          ),
          Container(
              width: double.infinity,
              height: double.infinity,
              decoration: new BoxDecoration(
                  color: Colors.grey.shade200.withOpacity(0.2))),
          Column(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(),
                  child: Text(
                    "MENTAL HEALTH\nCHECK UP",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                    textAlign: TextAlign.center,
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
              ),
              Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return QuestionsScreen();
                        },
                      ));
                    },
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all<double>(15.0),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                          StadiumBorder()),
                    ),
                    child: Text("Start",
                        style:
                            TextStyle(color: Color(0xffC52726), fontSize: 30)),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({Key? key}) : super(key: key);

  @override
  _QuestionsScreenState createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  List<QuestionModel> questions = [
    QuestionModel(isYes: 0, question: 'Is your mood happy today?'),
    QuestionModel(isYes: 0, question: 'Are u a short tempered person?'),
    QuestionModel(isYes: 0, question: 'Are u a emotional kind of person?'),
    QuestionModel(
        isYes: 0,
        question:
            'Do you have any addiction towards social media, smoking,etc.?'),
    QuestionModel(
        isYes: 0,
        question: 'Do you face any difficulty  focusing on every day task?'),
    QuestionModel(isYes: 0, question: 'Do you follow proper balanced diet?'),
    QuestionModel(
        isYes: 0,
        question:
            'Do you have enough sleeping hours required for a person(6-7 hrs)?'),
    QuestionModel(isYes: 0, question: 'Do you feel you are a coward person?'),
    QuestionModel(isYes: 0, question: 'Do you have control on your yourself?'),
    QuestionModel(
        isYes: 0,
        question: 'Do you have habit of showing your problem and thoughts?'),
    QuestionModel(isYes: 0, question: 'Are you a fitness freak?'),
    QuestionModel(isYes: 0, question: 'Do you lack self confidence?'),
    QuestionModel(isYes: 0, question: 'Are you facing anxiety?'),
    QuestionModel(isYes: 0, question: 'Do you have habit of multitasking?'),
    QuestionModel(
        isYes: 0,
        question:
            'Are you in a state to adapt some new things for a good cause?'),
  ];

  int index = 0;

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
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width * 0.7,
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
                    child: Text("No",
                        style:
                            TextStyle(color: Color(0xffC52726), fontSize: 30)),
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
                        questions[index].isYes = 1;
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) => ResultScreen(
                                      reviewQuestions: questions,
                                    )),
                            (Route<dynamic> route) => false);
                      } else {
                        setState(() {
                          questions[index].isYes = 1;
                          index++;
                        });
                      }
                    },
                    child: Text("Yes",
                        style: TextStyle(color: Colors.red, fontSize: 30)),
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
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ));
  }
}

class ResultScreen extends StatefulWidget {
  const ResultScreen({
    required this.reviewQuestions,
    Key? key,
  }) : super(key: key);

  final List<QuestionModel> reviewQuestions;

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  double result = 0.0;

  @override
  void initState() {
    List<QuestionModel> allyes = [];

    allyes
        .addAll(widget.reviewQuestions.where((element) => element.isYes == 1));

    result = allyes.length / widget.reviewQuestions.length * 100;
    print(result);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink[100],
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Your mental health stability is",
                    style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "${result.toStringAsFixed(2)}%",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Lottie.asset('assets/brain-level.json', height: 100),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              child: Center(
                child: ElevatedButton(
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all<double>(15.0),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                        StadiumBorder()),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (context) => MyHomePage()),
                        (Route<dynamic> route) => false);
                  },
                  child: Text("Test Again",
                      style: TextStyle(color: Color(0xffC52726), fontSize: 30)),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              padding: EdgeInsets.all(20),
              child: Text(
                "Instruction:\nKeep the habit of meditating and exercising regularly.\n\nTake good care of yourself. Get enough sleep and eat well.\n\nReach out to family and friends when times get hard.\n\nKeep yourself surrounded with positive people.\n\nGet regular medical checkups, and see your provider if you don’t feel right.\n\nGet help if you think you’re depressed. If you wait, it could get worse.",
                style: TextStyle(fontSize: 15, fontFamily: ''),
                textAlign: TextAlign.left,
              ),
            )
          ],
        ));
  }
}
