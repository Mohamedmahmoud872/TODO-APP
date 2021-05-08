import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/taskTemplate.dart';
import 'package:todo_app/tasks.dart';
import 'package:todo_app/tasks.dart';

class ToDo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ToDoState();
  }
}

class ToDoState extends State<ToDo> {
  GlobalKey<FormState> _formkey = new GlobalKey<FormState>();
  TextEditingController input = new TextEditingController();

  Future<void> newTask(BuildContext context) async {
    return await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Form(
              key: _formkey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                    controller: input,
                    validator: (value) {
                      return value.isNotEmpty ? null : 'Invalid Task';
                    },
                    decoration: InputDecoration(hintText: 'Enter Your Task'),
                  ),
                ],
              ),
            ),
            actions: [
              MaterialButton(
                onPressed: () {
                  if (_formkey.currentState.validate()) {
                    setState(() {
                      Tasks.tasks.add(input.text);
                    });
                    Navigator.of(context).pop();
                  }
                },
                child: Center(
                  child: Container(
                    //alignment: Alignment.center,
                    padding: EdgeInsets.all(11),
                    width: 135.0,
                    height: 50.0,
                    child: Row(
                      children: [
                        Text(
                          'New Task',
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(padding: EdgeInsets.only(right: 10)),
                        Icon(
                          Icons.keyboard_arrow_up,
                          color: Colors.white,
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 0, 102, 1),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                ),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromRGBO(217, 217, 217, 1),
          title: Text(
            'TODO',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Color.fromRGBO(0, 0, 102, 1)),
          ),
        ),
        drawer: Drawer(
          child: Container(
            color: Color.fromRGBO(2, 2, 73, 1.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Column(
                    children: [
                      Image.asset(
                        "images/circle-cropped1.png",
                        height: 130,
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 40)),
                      Text(
                        'Mohamed\nMahmoud',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 30)),
                      Container(
                        child: Column(
                          children: [
                            MaterialButton(
                              child: Container(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.bookmark_border,
                                      size: 30,
                                      color: Colors.purpleAccent,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(right: 15)),
                                    Text('Templates',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20))
                                  ],
                                ),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(bottom: 10)),
                            MaterialButton(
                              child: Container(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.apps,
                                      size: 30,
                                      color: Colors.purpleAccent,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(right: 15)),
                                    Text('Categories',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20))
                                  ],
                                ),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(bottom: 10)),
                            MaterialButton(
                              child: Container(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.analytics_outlined,
                                      size: 30,
                                      color: Colors.purpleAccent,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(right: 15)),
                                    Text('Analytics',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20))
                                  ],
                                ),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(bottom: 10)),
                            MaterialButton(
                              child: Container(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.settings,
                                      size: 30,
                                      color: Colors.purpleAccent,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(right: 15)),
                                    Text('Settings',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20))
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Text('Good', style: TextStyle(color: Colors.grey)),
                      Text('Consistency',
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "images/c9ce474d06a5e832416310fbacf9ed58.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: ListView.builder(
              itemCount: Tasks.tasks.length,
              itemBuilder: (context, i) => Template(
                index: i,
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromRGBO(2, 2, 73, 1.0),
          child: Icon(Icons.add),
          onPressed: () async {
            await newTask(context);
          },
        ),
      ),
    );
  }
}
