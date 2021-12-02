import 'package:flutter/material.dart';
import 'quiz.dart';


class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return  HomeState();
  }
}

class HomeState extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade400,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 5.0,
          title: Text("IT\'S QUIZ TIME",
          style: TextStyle(
            fontSize: 25.0,
            letterSpacing: 2.0,
          ),),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),


        body:  Container(
          margin: const EdgeInsets.all(15.0),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              ElevatedButton(
                onPressed: () => startQuiz(),
                child:const Text(
                    'START !',
                    style:TextStyle(
                      fontSize: 25.0,
                      letterSpacing: 2.0,
                    )
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

  void startQuiz(){
    setState(() {
      Navigator.push(context,  MaterialPageRoute(builder: (context)=> Quiz1()));
    });
  }
}
