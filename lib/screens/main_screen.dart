import 'package:flutter/material.dart';
import 'package:my_calculator_app/constants.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:my_calculator_app/components/tap_detector.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String displayText = '';
  String numberText = '';
  String totalFigure = '0';

  bool isOperatorClicked = false;

  void buttonClicked(String numberStr) {
    setState(() {
      if (isOperatorClicked) {
        numberText += numberStr;
        displayText = numberText;
      }
    });
  }

  void clearInput() {
    setState(() {
      displayText = '';
      numberText = '';
      totalFigure = '0';
      isOperatorClicked = false;
    });
  }

  void showResult() {
    setState(() {
      Parser p = Parser();
      Expression exp = p.parse(displayText);
      ContextModel cm = ContextModel();
      totalFigure = exp.evaluate(EvaluationType.REAL, cm).toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: Container(
              color: kTopContainerColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 22.0),
                    child: Text(
                      'Calculator',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: kTitleTextColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 25.0, bottom: 7.0),
                        child: Text(
                          displayText,
                          style: kCalculationTextStyle,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 25.0, bottom: 40.0),
                        child: Text(
                          totalFigure,
                          style: kTotalResultTextStyle,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ButtonTapDetector(
                              text: 'C',
                              onPress: (){
                                clearInput();
                              },
                              mStyle: kClearInputTextStyle,
                          ),
                          ButtonTapDetector(
                            text: '()',
                            onPress: (){

                            },
                            mStyle: kOperatorTextStyle,
                          ),
                          ButtonTapDetector(
                            text: '%',
                            onPress: (){

                            },
                            mStyle: kOperatorTextStyle,
                          ),
                          ButtonTapDetector(
                            text: '/',
                            onPress: (){

                            },
                            mStyle: kOperatorTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ButtonTapDetector(
                            text: '1',
                            onPress: (){
                              isOperatorClicked = true;
                              buttonClicked('1');
                            },
                            mStyle: kNumberTextStyle,
                          ),
                          ButtonTapDetector(
                            text: '2',
                            onPress: (){
                              isOperatorClicked = true;
                              buttonClicked('2');
                            },
                            mStyle: kNumberTextStyle,
                          ),
                          ButtonTapDetector(
                            text: '3',
                            onPress: (){
                              isOperatorClicked = true;
                              buttonClicked('3');
                            },
                            mStyle: kNumberTextStyle,
                          ),
                          ButtonTapDetector(
                            text: 'X',
                            onPress: (){
                              buttonClicked(' * ');
                            },
                            mStyle: kOperatorTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ButtonTapDetector(
                            text: '4',
                            onPress: (){
                              isOperatorClicked = true;
                              buttonClicked('4');
                            },
                            mStyle: kNumberTextStyle,
                          ),
                          ButtonTapDetector(
                            text: '5',
                            onPress: (){
                              isOperatorClicked = true;
                              buttonClicked('5');
                            },
                            mStyle: kNumberTextStyle,
                          ),
                          ButtonTapDetector(
                            text: '6',
                            onPress: (){
                              isOperatorClicked = true;
                              buttonClicked('6');
                            },
                            mStyle: kNumberTextStyle,
                          ),
                          ButtonTapDetector(
                            text: '+',
                            onPress: (){
                              buttonClicked(' + ');
                            },
                            mStyle: kOperatorTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ButtonTapDetector(
                            text: '7',
                            onPress: (){
                              isOperatorClicked = true;
                              buttonClicked('7');
                            },
                            mStyle: kNumberTextStyle,
                          ),
                          ButtonTapDetector(
                            text: '8',
                            onPress: (){
                              isOperatorClicked = true;
                              buttonClicked('8');
                            },
                            mStyle: kNumberTextStyle,
                          ),
                          ButtonTapDetector(
                            text: '9',
                            onPress: (){
                              isOperatorClicked = true;
                              buttonClicked('9');
                            },
                            mStyle: kNumberTextStyle,
                          ),
                          ButtonTapDetector(
                            text: '-',
                            onPress: (){
                              buttonClicked(' - ');
                            },
                            mStyle: kOperatorTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ButtonTapDetector(
                            text: '.',
                            onPress: (){
                              isOperatorClicked = true;
                              buttonClicked('.');
                            },
                            mStyle: kNumberTextStyle,
                          ),
                          ButtonTapDetector(
                            text: '0',
                            onPress: (){
                              isOperatorClicked = true;
                              buttonClicked('0');
                            },
                            mStyle: kNumberTextStyle,
                          ),
                          ButtonTapDetector(
                            text: '00',
                            onPress: (){
                              isOperatorClicked = true;
                              buttonClicked('00');
                            },
                            mStyle: kNumberTextStyle,
                          ),
                          ButtonTapDetector(
                            text: '=',
                            onPress: (){
                              showResult();
                            },
                            mStyle: kOperatorTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}


