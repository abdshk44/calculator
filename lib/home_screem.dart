import 'package:calculator/components/My_button.dart';
import 'package:calculator/components/last_button.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';


class HomeScreem extends StatefulWidget {
 const HomeScreem({super.key});

  @override
  State<HomeScreem> createState() => _HomeScreemState();
}

class _HomeScreemState extends State<HomeScreem> {
  var userInput = '';

  var answer = '';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [

                        Align(alignment: Alignment.bottomRight,
                            child: Text(userInput.toString(),style: TextStyle(fontSize: 30,color: Colors.white),)),
                        SizedBox(height: 15,),
                        Text(answer.toString(),style: TextStyle(fontSize: 30,color: Colors.white),),
                      ],
                    ),
                  ),
                ),
                Expanded(

                  child: Column(
                    children: [
                      Row(
                        children: [
                          MyButton(title: 'Ac',onpress: (){
                            userInput = '';
                            answer = '';
                            setState(() {

                            });
                          },),
                          MyButton(title: '+/-',onpress: (){
                            userInput += '+/-';
                            setState(() {

                            });



                          },),
                          MyButton(title: '%',onpress: (){
                            userInput += '%';
                            setState(() {

                            });

                          },),
                          MyButton(title: '/', color: Color(0xffffa00a),onpress: (){
                            userInput += '/';
                            setState(() {

                            });

                          },),
                        ],
                      ),
                      Row(
                        children: [
                          MyButton(title: '7',onpress: (){
                            userInput += '7';
                          setState(() {

                          });

                          },),
                          MyButton(title: '8',onpress: (){
                            userInput += '8';
                            setState(() {

                            });

                          },),
                          MyButton(title: '9',onpress: (){
                            userInput += '9';
                          setState(() {

                          });

                          },),
                          MyButton(title: 'X', color: Color(0xffffa00a),onpress: (){
                            userInput += '*';
                          setState(() {

                          });

                          },),
                        ],
                      ),
                      Row(
                        children: [
                          MyButton(title: '4',onpress: (){
                            userInput += '4';
                            setState(() {

                            });

                          },),
                          MyButton(title: '5',onpress: (){
                            userInput += '5';
                            setState(() {

                            });

                          },),
                          MyButton(title: '6',onpress: (){
                            userInput += '6';
                            setState(() {

                            });

                          },),
                          MyButton(title: '-', color: Color(0xffffa00a),onpress: (){
                            userInput += '-';
                            setState(() {

                            });

                          },),
                        ],
                      ),
                      Row(
                        children: [
                          MyButton(title: '1',onpress: (){
                            userInput += '1';
                            setState(() {

                            });


                          },),
                          MyButton(title: '2',onpress: (){
                            userInput += '2';
                            setState(() {

                            });

                          },),
                          MyButton(title: '3',onpress: (){
                            userInput += '3';
                            setState(() {

                            });

                          },),
                          MyButton(title: '+', color: Color(0xffffa00a),onpress: (){
                            userInput += '+';
                            setState(() {

                            });

                          },),
                        ],
                      ),
                      Row(
                        children: [
                          lastbtn(titile: '0',onpress: (){
                            userInput += '0';
                            setState(() {

                            });
                          },),

                          MyButton(title: '.', color: Color(0xffffa00a),onpress: (){
                            userInput += '.';
                            setState(() {

                            });

                          },),
                          MyButton(title: '=', color: Color(0xffffa00a),onpress: (){
                            equalPres();
                            setState(() {

                            });

                          },),
                        ],
                      ),
                    ],
                  ),
                )

              ],
            ),
          ),
        )

    );
  }

  void equalPres (){


    Parser p = Parser();
    Expression expression = p.parse(userInput);
    ContextModel contextModel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();

  }
}






