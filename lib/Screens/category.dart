import 'package:flutter/material.dart';
import 'package:mentel_health_app/Screens/Question_screen.dart';
import 'package:mentel_health_app/const.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  catTitle,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.7,
                width: MediaQuery.of(context).size.width * 0.9,
                child: ListView.builder(
                  itemCount: listOfCategory.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return QuestionsScreen(
                                catQuestions: listCatQues[index],
                              );
                            },
                          ));
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.09,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border:
                                  Border.all(width: 1, color: Colors.black)),
                          child: Text(
                            listOfCategory[index],
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
