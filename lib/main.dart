import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'dart:ui';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: homePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// ignore: camel_case_types
class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

// ignore: camel_case_types
class _homePageState extends State<homePage> {
  // ignore: prefer_typing_uninitialized_variables
  var first, second;
  // ignore: prefer_typing_uninitialized_variables
  var oop;
  // ignore: prefer_typing_uninitialized_variables
  var result, text = "";
  void btnClick(String btnText) {
    if (btnText == "C") {
      result = "";
      text = "";
      first = 0;
      second = 0;
    } else if (btnText == "+" ||
        btnText == "-" ||
        btnText == "x" ||
        btnText == "/") {
      first = int.parse(text);
      result = "";
      oop = btnText;
    } else if (btnText == "=") {
      second = int.parse(text);
      if (oop == "+") {
        result = (first + second).toString();
      }
      if (oop == "-") {
        result = (first - second).toString();
      }
      if (oop == "/") {
        result = (first / second).toString();
      }
      if (oop == "x") {
        result = (first * second).toString();
      }
    } else {
      result = int.parse(text + btnText).toString();
    }
    setState(() {
      text = result;
    });
  }

  Widget customOutlinebutton(String value) {
    return Expanded(
      child: OutlinedButton(
        onPressed: () => btnClick(value),
        child: Text(value,
            style: const TextStyle(
              fontSize: 25,
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Caculator'),
        ),
        // ignore: avoid_unnecessary_containers
        body: Container(
            child: Column(
          children: [
            Expanded(
                child: Container(
                    color: Colors.yellow,
                    alignment: Alignment.bottomRight,
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      text,
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Colors.red,
                      ),
                    ))),
            Row(
              children: [
                customOutlinebutton('9'),
                customOutlinebutton('8'),
                customOutlinebutton('7'),
                customOutlinebutton('+'),
              ],
            ),
            Row(
              children: [
                customOutlinebutton('6'),
                customOutlinebutton('5'),
                customOutlinebutton('4'),
                customOutlinebutton('-'),
              ],
            ),
            Row(
              children: [
                customOutlinebutton('3'),
                customOutlinebutton('2'),
                customOutlinebutton('1'),
                customOutlinebutton('x'),
              ],
            ),
            Row(
              children: [
                customOutlinebutton('C'),
                customOutlinebutton('0'),
                customOutlinebutton('='),
                customOutlinebutton('/'),
              ],
            ),
          ],
        )));
  }
}