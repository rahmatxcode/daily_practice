import 'package:daily_practice/state_concepts/build_button.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String _output = '0';
  String _currentInput = '0';
  String _operator = '';
  double _firstOperand = 0.0;
  double _secondOperand = 0.0;

  void buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == 'C') {
        _output = '0';
        _currentInput = '0';
        _operator = '';
        _firstOperand = 0.0;
        _secondOperand = 0.0;
      } else if (buttonText == '+' || buttonText == '-' || buttonText == '*' || buttonText == '/') {
        _firstOperand = double.parse(_currentInput);
        _operator = buttonText;
        _secondOperand = double.parse(_currentInput);
        _currentInput = '0';
      } else if (buttonText == '=') {
        _secondOperand = double.parse(_currentInput);
        switch (_operator) {
          case '+':
            _output = (_firstOperand + _secondOperand).toString();
            break;
          case '-':
            _output = (_firstOperand - _secondOperand).toString();
            break;
          case '*':
            _output = (_firstOperand * _secondOperand).toString();
            break;
          case '/':
            if (_secondOperand != 0) {
              _output = (_firstOperand / _secondOperand).toString();
            } else {
              _output = 'Error';
            }
            break;
        }
        _currentInput = '0';
      } else {
        if (_currentInput == '0') {
          _currentInput = buttonText;
        } else {
          _currentInput += buttonText;
        }
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.bottomRight,
                child: Column(
                  children: [
                    Text(
                      _currentInput,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      _output,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Row(
              children: [
                BuildButton(
                  text: '7',
                  onClicked: () {
                    buttonPressed('7');
                  },
                ),

                BuildButton(
                  text: '8',
                  onClicked: () {
                    buttonPressed('8');
                  },
                ),

                BuildButton(
                  text: '9',
                  onClicked: () {
                    buttonPressed('9');
                  },
                ),

                BuildButton(
                  text: '/',
                  onClicked: () {
                    buttonPressed('/');
                  },
                  color: Colors.orange,
                ),
              ],
            ),

            Row(
              children: [
                BuildButton(
                  text: '4',
                  onClicked: () {
                    buttonPressed('4');
                  },
                ),

                BuildButton(
                  text: '5',
                  onClicked: () {
                    buttonPressed('5');
                  },
                ),

                BuildButton(
                  text: '6',
                  onClicked: () {
                    buttonPressed('6');
                  },
                ),

                BuildButton(
                  text: '*',
                  onClicked: () {
                    buttonPressed('*');
                  },
                  color: Colors.orange,
                ),
              ],
            ),

            Row(
              children: [
                BuildButton(
                  text: '1',
                  onClicked: () {
                    buttonPressed('1');
                  },
                ),

                BuildButton(
                  text: '2',
                  onClicked: () {
                    buttonPressed('2');
                  },
                ),

                BuildButton(
                  text: '3',
                  onClicked: () {
                    buttonPressed('3');
                  },
                ),

                BuildButton(
                  text: '-',
                  onClicked: () {
                    buttonPressed('-');
                  },
                  color: Colors.orange,
                ),
              ],
            ),

            Row(
              children: [
                BuildButton(
                  text: 'C',
                  onClicked: () {
                    buttonPressed('C');
                  },
                ),

                BuildButton(
                  text: '0',
                  onClicked: () {
                    buttonPressed('0');
                  },
                ),

                BuildButton(
                  text: '=',
                  onClicked: () {
                    buttonPressed('=');
                  },
                ),

                BuildButton(
                  text: '+',
                  onClicked: () {
                    buttonPressed('+');
                  },
                  color: Colors.orange,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}