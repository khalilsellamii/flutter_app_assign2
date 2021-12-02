import 'package:flutter/material.dart';

var finalScore = 0;
var questionNumber = 0;
var quiz = Quiz();

class Quiz{

  var questions = [
    "2+2 = ?",
    "5*2 = ?",
    "7*3 = ?",
    "6+4 = ?",
  ];
  var choices = [
    ["1", "2", "4", "10"],
    ["5", "10", "15", "20"],
    ["20", "21", "22", "25"],
    ["2", "8", "10", "20"]
  ];
  var correctAnswers = [
    "4", "10", "21", "10"
  ];

}

class Quiz1 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return  Quiz1State();
  }
}
class Quiz1State extends State<Quiz1> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade400,
        appBar: AppBar(
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
          elevation: 5.0,
          centerTitle: true,
          title: Text(quiz.questions[questionNumber],
           style:const TextStyle(
             fontSize: 20.0,
           ),
         ),
        ),
        body: Container(
          padding:const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:  <Widget>[
              const SizedBox(height: 25.0),
              ElevatedButton(
                onPressed: () {
                  if (quiz.choices[questionNumber][0] ==
                      quiz.correctAnswers[questionNumber]) {
                    finalScore++;
                  }
                  updateQuestion();
                },
                child: Text(quiz.choices[questionNumber][0],
                  style:const TextStyle(
                    fontSize: 20.0,
                    letterSpacing: 2.0,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding:const EdgeInsets.fromLTRB(0 , 20.0,0 , 20.0),
                  primary: Colors. indigo,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius .circular(50.0),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  if (quiz.choices[questionNumber][1] ==
                      quiz.correctAnswers[questionNumber]) {
                    finalScore++;
                  }
                  updateQuestion();
                },
                child: Text(quiz.choices[questionNumber][1],
                  style:const TextStyle(
                    fontSize: 20.0,
                    letterSpacing: 2.0,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding:const EdgeInsets.fromLTRB(0 , 20.0,0 , 20.0),
                  primary: Colors. indigo,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius .circular(50.0),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  if (quiz.choices[questionNumber][2] ==
                      quiz.correctAnswers[questionNumber]) {
                    finalScore++;
                  }
                  updateQuestion();
                },
                child: Text(quiz.choices[questionNumber][2],
                  style:const TextStyle(
                    fontSize: 20.0,
                    letterSpacing: 2.0,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding:const EdgeInsets.fromLTRB(0 , 20.0,0 , 20.0),
                  primary: Colors. indigo,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius .circular(50.0),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  if (quiz.choices[questionNumber][3] ==
                      quiz.correctAnswers[questionNumber]) {
                    finalScore++;
                  }
                  updateQuestion();
                },
                child: Text(quiz.choices[questionNumber][3],
                  style:const TextStyle(
                    fontSize: 20.0,
                    letterSpacing: 2.0,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding:const EdgeInsets.fromLTRB(0 , 20.0,0 , 20.0),
                  primary: Colors. indigo,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius .circular(50.0),
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              Navigator.of(context).pushNamed( '/');
              questionNumber=0;
              finalScore=0;
            });
          },
          backgroundColor: Colors.black,
          child:const Text('Quit  \n quiz'),
        ),
      ),
    );
  }
  void updateQuestion(){
    setState(() {
      if(questionNumber == quiz.questions.length - 1){
        Navigator.push(context,  MaterialPageRoute(builder: (context)=>  ScoreScreen(score: finalScore,)));
      }else{
        questionNumber++;
      }
    });
  }
}
class ScoreScreen extends StatelessWidget{
  int score;
  ScoreScreen({required this.score}) ;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade400,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.black,
            elevation: 5.0,
            centerTitle: true,
            title:const Text('YOUR SCORE IS ',
              style: TextStyle(
                fontSize: 25.0,
              ),
            ),
          ),
          body:Container(
            padding: const EdgeInsets.all(15.0),
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                 Padding(
                   padding: const EdgeInsets.fromLTRB(40.0,0,0,0),
                   child: Text("Final Score: $score/4",
                    style:const TextStyle(
                        fontSize: 30.0
                    ),),
                 ),
                const Padding(padding: EdgeInsets.all(30.0)),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed( '/');
                    questionNumber=0;
                    finalScore=0;
                  },
                  child:const Text('RETRY QUIZ',
                    style: TextStyle(
                      fontSize: 25.0,
                      letterSpacing: 2.0,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding:const EdgeInsets.fromLTRB(0 , 20.0,0 , 20.0),
                    primary: Colors. indigo,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius .circular(50.0),
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