import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mentel_health_app/Screens/category.dart';
import 'package:mentel_health_app/const.dart';

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
                    title,
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
                          return CategoryScreen();
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
