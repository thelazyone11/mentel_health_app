import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mentel_health_app/Screens/category.dart';
import 'package:mentel_health_app/model/question_model.dart';

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
  int total = 0;

  @override
  void initState() {
    List<QuestionModel> alloption2 = [];
    List<QuestionModel> alloption3 = [];

    alloption2.addAll(
        widget.reviewQuestions.where((element) => element.option2 == 1));
    alloption3.addAll(
        widget.reviewQuestions.where((element) => element.option3 == 1));

    result = (alloption2.length / 2) + alloption3.length;
    total = widget.reviewQuestions.length;
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
                    "${result.toStringAsFixed(0)}/$total",
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
                        MaterialPageRoute(
                            builder: (context) => CategoryScreen()),
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
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text("Instruction:",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      fontFamily: ''),
                  textAlign: TextAlign.left),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              padding: EdgeInsets.all(20),
              child: Text(
                "Keep the habit of meditating and exercising regularly.\n\nTake good care of yourself. Get enough sleep and eat well.\n\nReach out to family and friends when times get hard.\n\nKeep yourself surrounded with positive people.\n\nGet regular medical checkups, and see your provider if you don’t feel right.\n\nGet help if you think you’re depressed. If you wait, it could get worse.",
                style: TextStyle(fontSize: 14, fontFamily: ''),
                textAlign: TextAlign.left,
              ),
            )
          ],
        ));
  }
}
