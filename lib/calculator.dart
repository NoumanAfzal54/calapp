import 'package:cal_app/Components/buttons.dart';
import 'package:cal_app/constants.dart';
import 'package:cal_app/history.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';


class Calculator extends StatefulWidget {
  static const String id = 'Calculator';
  Calculator({super.key});

  @override
  State<Calculator> createState() => _MyappState();
}

class _MyappState extends State<Calculator> {
  var userinput = '';
  var answer = '';
  var history = ' ';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 60),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          userinput.toString(),
                          style: headingtextstyle,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          answer.toString(),
                          style: TextStyle(color: Colors.orange, fontSize: 40),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      children: [
                        MyButton(
                          title: "Ac",
                          color: clrg,
                          onPress: () {
                            userinput = " ";
                            answer = " ";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: "+/-",
                          color: clrg,
                          onPress: () {
                            setState(() {});
                          }),

                        MyButton(
                            title: "%",
                            color: clrg,
                            onPress: () {
                              userinput += '%';
                              setState(() {});
                            }),
                        MyButton(
                          title: "/",
                          onPress: () {
                            userinput += '/';
                            setState(() {});
                          },
                          color: Colors.orange,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                            color: clrg,
                            title: "7",
                            onPress: () {
                              userinput += '7';
                              setState(() {});
                            }),
                        MyButton(
                            title: "8",
                            color: clrg,
                            onPress: () {
                              userinput += '8';

                              setState(() {});
                            }),
                        MyButton(
                            title: "9",
                            color: clrg,
                            onPress: () {
                              userinput += '9';
                              setState(() {});
                            }),
                        MyButton(
                            title: "*",
                            color: Colors.orange,
                            onPress: () {
                              userinput += '*';
                              setState(() {});
                            })
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                            title: "4",
                            color: clrg,
                            onPress: () {
                              userinput += '4';
                              setState(() {});
                            }),
                        MyButton(
                            title: "5",
                            color: clrg,
                            onPress: () {
                              userinput += '5';
                              setState(() {});
                            }),
                        MyButton(
                            title: "6",
                            color: clrg,
                            onPress: () {
                              userinput += '6';
                              setState(() {});
                            }),
                        MyButton(
                            title: "-",
                            color: Colors.orange,
                            onPress: () {
                              userinput += '-';
                              setState(() {});
                            })
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                            title: "1",
                            color: clrg,
                            onPress: () {
                              userinput += '1';
                              setState(() {});
                            }),
                        MyButton(
                            title: "2",
                            color: clrg,
                            onPress: () {
                              userinput += '2';
                              setState(() {});
                            }),
                        MyButton(
                            title: "3",
                            color: clrg,
                            onPress: () {
                              userinput += '3';
                              setState(() {});
                            }),
                        MyButton(
                            title: "+",
                            color: Colors.orange,
                            onPress: () {
                              userinput += '+';
                              setState(() {});
                            })
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                            title: "0",
                            color: clrg,
                            onPress: () {
                              userinput += '0';
                              setState(() {});
                            }),
                        MyButton(
                            title: ".",
                            color: clrg,
                            onPress: () {
                              userinput += '.';
                              setState(() {});
                            }),
                        MyButton(
                            title: "DEL",
                            color: Colors.red,
                            onPress: () {
                              userinput =
                                  userinput.substring(0, userinput.length - 1);
                              setState(() {});
                            }),
                        MyButton(
                            title: "=",
                            color: Colors.orange,
                            onPress: () {
                              equalPress();
                              setState(() {});
                            })
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void equalPress() {
    Parser p = new Parser(); //Initializing the equal button
    Expression exp =
        p.parse(userinput); //Passing the expression store in userinput
    ContextModel contextModel = ContextModel();

    double eval = exp.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();

//There is also a thing known as replace all in case of replacing anything like $ with -  and will be used inside this function
  }
}
