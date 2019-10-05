import 'package:bmi_calculator/bmi_calculator.dart';
import 'package:bmi_calculator/screens/result_page.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/component/reusable_card.dart';
import 'package:bmi_calculator/component/round_icon_button.dart';

class InputPage extends StatefulWidget{
  @override
  _InputPageState createState() => _InputPageState();

}

class _InputPageState extends State<InputPage>{

  int height = 160;
  int weight = 50;
  int age = 20;
  int radioVal = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI Calculator",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 3,
            child: ReusableCard(
              cardColor: Colors.white,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Gender",
                    style: labelTextStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(

                      children: <Widget>[
                        Text(
                          "I'm",
                          style: inputValueTextStyle.copyWith(
                            fontWeight: FontWeight.normal,
                            color: Colors.grey[800],
                          ),
                        ),
                        SizedBox(
                          width: 30.0,
                        ),
                        Text(
                          "Male",
                          style: labelTextStyle.copyWith(
                            fontWeight: FontWeight.normal,
                            color: Colors.grey[800],
                          ),
                        ),
                        Row(
                          children: [0,1].map((int index) => Row(
                            children: <Widget>[
                              Radio(
                                activeColor: Color(0xFF7265E3),
                                value: index,
                                groupValue: this.radioVal,
                                onChanged: (int value){
                                  setState(() {
                                    this.radioVal = value;
                                  });
                                },
                              )
                            ],
                          ),
                          ).toList(),
                        ),
                        Text(
                          "Female",
                          style: labelTextStyle.copyWith(
                            fontWeight: FontWeight.normal,
                            color: Colors.grey[800],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    cardColor: Colors.white,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Age",
                          style: labelTextStyle
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Text(
                            age.toString(),
                            style: inputValueTextStyle,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              childIconData: FontAwesomeIcons.minus,
                              iconFillColor: Colors.white,
                              iconColor: Color(0xFF7265E3),
                              onPressed: (){
                                setState(() {
                                  age = age-1;
                                });
                              },
                            ),
                            SizedBox(
                              width: 25.0,
                            ),
                            RoundIconButton(
                              childIconData: FontAwesomeIcons.plus,
                              iconColor: Color(0xFF7265E3),
                              iconFillColor: Colors.white,
                              onPressed: (){
                                setState(() {
                                  age = age+1;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardColor: Colors.white,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                            "Weight",
                            style: labelTextStyle
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Text(
                            weight.toString(),
                            style: inputValueTextStyle,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              childIconData: FontAwesomeIcons.minus,
                              iconColor: Color(0xFF7265E3),
                              iconFillColor: Colors.white,
                              onPressed: (){
                                setState(() {
                                  weight = weight-1;
                                });
                              },
                            ),
                            SizedBox(
                              width: 25.0,
                            ),
                            RoundIconButton(
                              childIconData: FontAwesomeIcons.plus,
                              iconColor: Color(0xFF7265E3),
                              iconFillColor: Colors.white,
                              onPressed: (){
                                setState(() {
                                  weight = weight+1;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: ReusableCard(
              cardColor: Colors.white,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        "Height",
                        style: labelTextStyle,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(
                              height.toInt().toString(),
                              style: inputValueTextStyle,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              "cm",
                              style: captionTextStyle,
                            ),
                          ],
                        ),
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          thumbColor: Color(0xFF7265E3),
                          overlayColor: Color(0x297265E3),
                          thumbShape: RoundSliderThumbShape(
                            enabledThumbRadius: 12.0,
                          ),
                          overlayShape: RoundSliderOverlayShape(
                            overlayRadius: 24.0,
                          ),
                        ),
                        child: Slider(
                          value: height.toDouble(),
                          min: minHeight,
                          max: maxHeight,
                          activeColor: Color(0xFF6055CD),
                          inactiveColor: Colors.grey,
                          onChanged: (double value){
                            setState(() {
                              height = value.toInt();
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    "Calculate your body mass indes",
                    style: captionTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  RoundIconButton(
                    childIconData: FontAwesomeIcons.heart,
                    iconColor: Colors.white,
                    iconFillColor: Color(0xFF7265E3),
                    onPressed: (){
                      Calculator calc = Calculator(weight: weight,height: height);
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ResultPage(
                          bmiResult: calc.calculateBMI(),
                          resultText: calc.getResult(),
                          interpretation: calc.getInterpretation(),
                        )),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }

}




