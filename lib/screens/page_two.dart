import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../main.dart';

class PageTwo extends StatefulWidget {
  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  bool displayForm = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Two"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Consumer(
            builder: (context, watch, child) {
              final state = watch(moodProvider.state);
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            state.emoji ?? "😁",
                            textScaleFactor: 2.0,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            state.name ?? "My mood",
                            textScaleFactor: 2.0,
                          )
                        ],
                      ),
                      SizedBox(height: 20.0),
                      Container(
                          color: Colors.grey[200],
                          padding: const EdgeInsets.all(20.0),
                          child: Text(state.comment ??
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
                                context.read(moodProvider).emoji = value;
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
                                context.read(moodProvider).name = value;
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
                                context.read(moodProvider).comment = value;
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
              );
            },
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
}