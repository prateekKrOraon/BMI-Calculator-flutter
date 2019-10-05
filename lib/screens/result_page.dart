import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/component/reusable_card.dart';

class ResultPage extends StatelessWidget{

  ResultPage({
    @required this.bmiResult,
    @required this.resultText,
    @required this.interpretation,
  });

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI Calculator",
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Center(
              child: Text(
                "Your Result",
                textAlign: TextAlign.center,
                style: resultTextStyle.copyWith(
                  fontSize: 70.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              cardColor: Colors.white,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: labelTextStyle.copyWith(
                      color: Color(0xFF7265E3),
                      fontSize: 45.0,
                    ),
                  ),
                  Text(
                    bmiResult,
                    style: resultTextStyle,
                  ),
                  Text(
                    interpretation,
                    style:captionTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(100.0, 10.0, 100.0, 40.0,),
                child: Card(
                  color: Color(0xFF7265E3),
                  shape: StadiumBorder(
                      side: BorderSide(
                        color: Color(0xFF7265E3),
                        width: 1.0,
                      )
                  ),
                  child: FlatButton(
                    child: Text(
                      "Calculate Again",
                      style: labelTextStyle.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}