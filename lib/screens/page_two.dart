import 'package:flutter/material.dart';

import '../data/mood.dart';

class PageTwo extends StatefulWidget {
  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  Mood myMood;
  bool displayForm = false;

  @override
  void initState() {
    super.initState();
    myMood = Mood(); //TODO: get Mood Notifier
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Two"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        myMood.emoji ?? "😁",
                        textScaleFactor: 2.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        myMood.name ?? "My mood",
                        textScaleFactor: 2.0,
                      )
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Container(
                      color: Colors.grey[200],
                      padding: const EdgeInsets.all(20.0),
                      child: Text(myMood.comment ??
                          "Why I'm feeling this mood",
                        style: TextStyle(color: Colors.grey[700]),
                      )),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    child: Text("Change my mood"),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal,
                      onPrimary: Colors.white,
                    ),
                    onPressed: changeMyMood,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  ElevatedButton(
                    child: Text("First page"),
                    style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).primaryColor,
                      onPrimary: Colors.white,
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
              SizedBox(height: 30.0,),
              Visibility(
                visible: displayForm,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: Column(
                    children: [
                      TextField(
                        keyboardType: TextInputType.text,
                        onChanged: (String value) {
                          setState(() {
                            myMood.emoji = value;
                          });
                        },
                        decoration: InputDecoration(
                          labelText: "Enter an emoji",
                        ),
                      ),
                      TextField(
                        keyboardType: TextInputType.text,
                        onChanged: (String value) {
                          setState(() {
                            myMood.name = value;
                          });
                        },
                        decoration: InputDecoration(
                          labelText: "Enter a mood",
                        ),
                      ),
                      TextField(
                        keyboardType: TextInputType.text,
                        onChanged: (String value) {
                          setState(() {
                            myMood.comment = value;
                          });
                        },
                        decoration: InputDecoration(
                          labelText: "Enter a comment about your mood",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  changeMyMood() {
    setState(() {
      displayForm = !displayForm;
    });
  }

  submitChanges() {
    Mood myNewMood = myMood;
  }
}