import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("Simple Calculator")),
      body: MyCalculator(),
    ));
  }
}

class MyCalculator extends StatefulWidget {
  _ComputeSum createState() => _ComputeSum();
}

class _ComputeSum extends State {
  TextEditingController tfnum1 = TextEditingController();
  TextEditingController tfnum2 = TextEditingController();
  String output = "";
  var n1 = 0;
  var n2 = 0;
  var sum = 0;

  void AddTwoNumber() {
    n1 = int.parse(tfnum1.text);
    n2 = int.parse(tfnum2.text);

    sum = n1 + n2;

    setState(() {
      output = "The sum is " + sum.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextField(
            controller: tfnum1,
            decoration: InputDecoration(
                labelText: "Enter value for Num 1",
                hintText: "Please input value for num1"),
          ),
          TextField(
            controller: tfnum2,
            decoration: InputDecoration(
                labelText: "Enter value for Num 2",
                hintText: "Please input value for num2"),
          ),
         ElevatedButton(
            onPressed: () {
              AddTwoNumber();
            },
            child: Text("Compute"),
          ),
          Text(output)
        ],
      ),
    );
  }
}
