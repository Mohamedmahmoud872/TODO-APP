import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/tasks.dart';

class Template extends StatefulWidget {
  final int index;
  Template({
    this.index,
  });
  @override
  State<StatefulWidget> createState() {
    return TemplateState();
  }
}

class TemplateState extends State<Template> {
  bool checkBox = false;
  var x = TextDecoration.lineThrough;
  var y = TextDecoration.none;
  var color1 = Colors.indigo[900];
  var color2 = Colors.grey;
  void boxChecked(bool val) {
    setState(() {
      checkBox = true;
      y = x;
      color1 = color2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          color: Colors.white,
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          Checkbox(
            value: checkBox,
            onChanged: boxChecked,
          ),
          Flexible(
              child: Text(Tasks.tasks[widget.index],
                  style:
                      TextStyle(decoration: y, fontSize: 20, color: color1))),
        ],
      ),
    );
  }
}
