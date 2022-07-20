import '../components/bottom_button.dart';

import '../components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../components/constants.dart';

class ResultsPage extends StatelessWidget {
  final String resultBMI;
  final String resultText;
  final String resultInterpretation;

  const ResultsPage({
    Key? key,
    required this.resultBMI,
    required this.resultText,
    required this.resultInterpretation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: const Text(
                "Your Result",
                style: resultTitleStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: activeContainerColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Text(
                      resultText,
                      style: resultBMIRemarkStyle,
                    ),
                  ),
                  Text(
                    resultBMI,
                    style: resultBMIStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      resultInterpretation,
                      textAlign: TextAlign.center,
                      style: resultBMIbodyStyle,
                    ),
                  ),
                ],
              ),
              onPress: () {},
            ),
          ),
          BottomButton(
            btnTitle: "RE-CALCULATE",
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
