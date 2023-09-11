import 'package:calculater_app_v2/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var userInput = '';
  var answer = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Calculator'),
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
            //   child: TextField(
            //     readOnly: true,
            //     autofocus: true,
            //     showCursor: true,
            //     // controller: ,
            //     decoration: InputDecoration(
            //       border: InputBorder.none,
            //       fillColor: AppColor.primaryColor,
            //       filled: true,
            //     ),
            //     style: TextStyle(
            //       fontSize: 40,
            //     ),
            //   ),
            // ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end ,
                  children: [
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Text(userInput.toString(), style: TextStyle(fontSize:30, color: Colors.white))),
                    SizedBox(height: 15,),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Text(answer.toString(), style: TextStyle(fontSize:30, color: Colors.white))),
                  ],
                ),
              ),
            ),

            // Spacer(),
            Container(
              height: MediaQuery.sizeOf(context).height * 0.6,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
              decoration: BoxDecoration(
                color: AppColor.primaryColor,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Material(
                        elevation:4,
                        color: AppColor.primaryColor,
                        borderRadius: BorderRadius.circular(50),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(50),
                          onTap: (){
                            userInput = '';
                            answer = '';
                            setState(() {

                            });
                          },
                          child: CircleAvatar(
                            radius: 36,
                            backgroundColor: AppColor.secondaryColor2,
                            child: Text(
                              'C',
                              style: TextStyle(
                                  fontSize: 32, fontWeight: FontWeight.w600 , color: Colors.blue),
                            ),
                          ),
                        ),
                      ),
                      Material(
                        elevation:4,
                        color: AppColor.primaryColor,
                        borderRadius: BorderRadius.circular(50),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(50),
                          onTap: (){
                            setState(() {
                              userInput += '/';
                            });
                          },
                          child: CircleAvatar(
                            radius: 36,
                            backgroundColor: AppColor.secondaryColor2,
                            child: Text(
                              '/',
                              style: TextStyle(
                                  fontSize: 32, fontWeight: FontWeight.w600, color: Colors.blue),
                            ),
                          ),
                        ),
                      ),
                      Material(
                        elevation:4,
                        color: AppColor.primaryColor,
                        borderRadius: BorderRadius.circular(50),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(50),

                          onTap: (){
                            setState(() {
                              userInput += 'X';
                            });
                          },
                          child: CircleAvatar(

                            radius: 36,
                            backgroundColor: AppColor.secondaryColor2,
                            child: Text(
                              'X',
                              style: TextStyle(
                                  fontSize: 32, fontWeight: FontWeight.w600 , color: Colors.blue),
                            ),
                          ),
                        ),
                      ),
                      Material(
                        elevation:4,
                        color: AppColor.primaryColor,
                        borderRadius: BorderRadius.circular(50),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(50),

                          onTap: (){
                            userInput = '';
                            answer = '';
                            setState(() {

                            });
                          },
                          child: CircleAvatar(
                            radius: 36,
                            backgroundColor: AppColor.secondaryColor2,
                            child: Text(
                              'AC',
                              style: TextStyle(
                                  fontSize: 32, fontWeight: FontWeight.w600, color: Colors.blue),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Material(
                            elevation:4,
                            color: AppColor.primaryColor,
                            borderRadius: BorderRadius.circular(50),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(50),

                              onTap: (){
                                setState(() {
                                  userInput += '7';
                                });
                              },
                              child: CircleAvatar(
                                radius: 36,
                                backgroundColor: AppColor.secondaryColor2,
                                child: Text(
                                  '7',
                                  style: TextStyle(
                                      fontSize: 32, fontWeight: FontWeight.w600 ,),
                                ),
                              ),
                            ),
                          ),
                          Material(
                            elevation:4,
                            color: AppColor.primaryColor,
                            borderRadius: BorderRadius.circular(50),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(50),

                              onTap: (){
                                setState(() {
                                  userInput += '8';
                                });
                              },
                              child: CircleAvatar(
                                radius: 36,
                                backgroundColor: AppColor.secondaryColor2,
                                child: Text(
                                  '8',
                                  style: TextStyle(
                                      fontSize: 32, fontWeight: FontWeight.w600, ),
                                ),
                              ),
                            ),
                          ),
                          Material(
                            elevation:4,
                            color: AppColor.primaryColor,
                            borderRadius: BorderRadius.circular(50),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(50),

                              onTap: (){
                                setState(() {
                                  userInput += '9';
                                });
                              },
                              child: CircleAvatar(
                                radius: 36,
                                backgroundColor: AppColor.secondaryColor2,
                                child: Text(
                                  '9',
                                  style: TextStyle(
                                      fontSize: 32, fontWeight: FontWeight.w600 , ),
                                ),
                              ),
                            ),
                          ),
                          Material(
                            elevation:4,
                            color: AppColor.primaryColor,
                            borderRadius: BorderRadius.circular(50),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(50),

                              onTap: (){
                                setState(() {
                                  userInput += '-';
                                });
                              },
                              child: CircleAvatar(
                                radius: 36,
                                backgroundColor: AppColor.secondaryColor2,
                                child: Text(
                                  '-',
                                  style: TextStyle(
                                      fontSize: 32, fontWeight: FontWeight.w600, color: Colors.blue),
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                  Spacer(),

                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Material(
                            elevation:4,
                            color: AppColor.primaryColor,
                            borderRadius: BorderRadius.circular(50),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(50),

                              onTap: (){
                                setState(() {
                                  userInput += '4';
                                });
                              },
                              child: CircleAvatar(
                                radius: 36,
                                backgroundColor: AppColor.secondaryColor2,
                                child: Text(
                                  '4',
                                  style: TextStyle(
                                      fontSize: 32, fontWeight: FontWeight.w600 , ),
                                ),
                              ),
                            ),
                          ),
                          Material(
                            elevation:4,
                            color: AppColor.primaryColor,
                            borderRadius: BorderRadius.circular(50),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(50),

                              onTap: (){
                                setState(() {
                                  userInput += '5';
                                });
                              },
                              child: CircleAvatar(
                                radius: 36,
                                backgroundColor: AppColor.secondaryColor2,
                                child: Text(
                                  '5',
                                  style: TextStyle(
                                      fontSize: 32, fontWeight: FontWeight.w600, ),
                                ),
                              ),
                            ),
                          ),
                          Material(
                            elevation:4,
                            color: AppColor.primaryColor,
                            borderRadius: BorderRadius.circular(50),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(50),

                              onTap: (){
                                setState(() {
                                  userInput += '6';
                                });
                              },
                              child: CircleAvatar(
                                radius: 36,
                                backgroundColor: AppColor.secondaryColor2,
                                child: Text(
                                  '6',
                                  style: TextStyle(
                                      fontSize: 32, fontWeight: FontWeight.w600 , ),
                                ),
                              ),
                            ),
                          ),
                          Material(
                            elevation:4,
                            color: AppColor.primaryColor,
                            borderRadius: BorderRadius.circular(50),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(50),

                              onTap: (){
                                setState(() {
                                  userInput += '+';
                                });
                              },
                              child: CircleAvatar(
                                radius: 36,
                                backgroundColor: AppColor.secondaryColor2,
                                child: Text(
                                  '+',
                                  style: TextStyle(
                                      fontSize: 32, fontWeight: FontWeight.w600, color: Colors.blue),
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Material(
                            elevation:4,
                            color: AppColor.primaryColor,
                            borderRadius: BorderRadius.circular(50),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(50),

                              onTap: (){
                                setState(() {
                                  userInput += '1';
                                });
                              },
                              child: CircleAvatar(
                                radius: 36,
                                backgroundColor: AppColor.secondaryColor2,
                                child: Text(
                                  '1',
                                  style: TextStyle(
                                      fontSize: 32, fontWeight: FontWeight.w600 , ),
                                ),
                              ),
                            ),
                          ),
                          Material(
                            elevation:4,
                            color: AppColor.primaryColor,
                            borderRadius: BorderRadius.circular(50),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(50),

                              onTap: (){
                                setState(() {
                                  userInput += '2';
                                });
                              },
                              child: CircleAvatar(
                                radius: 36,
                                backgroundColor: AppColor.secondaryColor2,
                                child: Text(
                                  '2',
                                  style: TextStyle(
                                      fontSize: 32, fontWeight: FontWeight.w600, ),
                                ),
                              ),
                            ),
                          ),
                          Material(
                            elevation:4,
                            color: AppColor.primaryColor,
                            borderRadius: BorderRadius.circular(50),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(50),

                              onTap: (){
                                setState(() {
                                  userInput += '3';
                                });
                              },
                              child: CircleAvatar(
                                radius: 36,
                                backgroundColor: AppColor.secondaryColor2,
                                child: Text(
                                  '3',
                                  style: TextStyle(
                                      fontSize: 32, fontWeight: FontWeight.w600 ,),
                                ),
                              ),
                            ),
                          ),
                          Material(
                            elevation:4,
                            color: AppColor.primaryColor,
                            borderRadius: BorderRadius.circular(50),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(50),

                              onTap: (){
                                setState(() {
                                  userInput = userInput.substring(0, userInput.length - 1 );
                                });
                              },
                              child: CircleAvatar(
                                radius: 36,
                                backgroundColor: AppColor.secondaryColor2,
                                child: Text(
                                  'Del',
                                  style: TextStyle(
                                      fontSize: 32, fontWeight: FontWeight.w600, color: Colors.blue),
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Material(
                            elevation:4,
                            color: AppColor.primaryColor,
                            borderRadius: BorderRadius.circular(50),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(50),

                              onTap: (){
                                setState(() {
                                  userInput += '%';
                                });
                              },
                              child: CircleAvatar(
                                radius: 36,
                                backgroundColor: AppColor.secondaryColor2,
                                child: Text(
                                  '%',
                                  style: TextStyle(
                                      fontSize: 32, fontWeight: FontWeight.w600 ,),
                                ),
                              ),
                            ),
                          ),
                          Material(
                            elevation:4,
                            color: AppColor.primaryColor,
                            borderRadius: BorderRadius.circular(50),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(50),

                              onTap: (){
                                setState(() {
                                  userInput += '0';
                                });
                              },
                              child: CircleAvatar(
                                radius: 36,
                                backgroundColor: AppColor.secondaryColor2,
                                child: Text(
                                  '0',
                                  style: TextStyle(
                                      fontSize: 32, fontWeight: FontWeight.w600, ),
                                ),
                              ),
                            ),
                          ),
                          Material(
                            elevation:4,
                            color: AppColor.primaryColor,
                            borderRadius: BorderRadius.circular(50),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(50),

                              onTap: (){
                                setState(() {
                                  userInput += '.';
                                });
                              },
                              child: CircleAvatar(
                                radius: 36,
                                backgroundColor: AppColor.secondaryColor2,
                                child: Text(
                                  '.',
                                  style: TextStyle(
                                      fontSize: 32, fontWeight: FontWeight.w600 , ),
                                ),
                              ),
                            ),
                          ),
                          Material(
                            elevation:4,
                            color: AppColor.primaryColor,
                            borderRadius: BorderRadius.circular(50),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(50),

                              onTap: (){
                                setState(() {
                                  equalPress();
                                });
                              },
                              child: CircleAvatar(
                                radius: 36,
                                backgroundColor: AppColor.secondaryColor2,
                                child: Text(
                                  '=',
                                  style: TextStyle(
                                      fontSize: 32, fontWeight: FontWeight.w600, color: Colors.blue),
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  void equalPress(){
    String finalUserInput = userInput;
    finalUserInput = userInput.replaceAll('X', '*');
    Parser p = Parser();
    Expression expression = p.parse(finalUserInput);
    ContextModel contextModel = ContextModel();

    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }
}
