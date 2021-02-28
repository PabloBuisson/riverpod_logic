import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../main.dart';
import 'page_two.dart';

class PageOne extends StatefulWidget {
  PageOne({Key key}) : super(key: key);

  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  bool displayForm = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page One"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /// 3) create a Consumer
              Consumer(
                builder: (context, watch, child) {
                  final state = watch(moodProvider.state);
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            /// 4) watch the state of the provider
                            /// to display changes
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
                  );
                }
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
                    child: Text("Next page"),
                    style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).primaryColor,
                      onPrimary: Colors.white,
                    ),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return PageTwo();
                        },
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.0,),
              Consumer(
                builder: (context, watch, child) {
                  return Visibility(
                    visible: displayForm,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child: Column(
                        children: [
                          TextField(
                            keyboardType: TextInputType.text,
                            onChanged: (String value) {
                              setState(() {
                                /// 5) read the provider to change the state
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
                  );
                },
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
}