import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.bmiResult, @required this.interpretation, @required this.resultText});
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(

        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Container(
            padding: EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
            child: Text('Result Page', style: kTitleStyle,),

          )),
          Expanded(flex: 5,
          child: ReusableCard(colour: kActiveCardColour,
          childCard: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(resultText.toUpperCase(),style: kResultTextSyle,),
              Text(bmiResult, style: kBmiTextStyle,),
              Text(interpretation,style: kBodyTextStyle,
              textAlign:TextAlign.center,)
            ],
          ),),


          ),
          BottomButton(buttonTitle: 'Re-Calculate', onTap: (){
            Navigator.pop(context);
          })
        ],
      )
    );
  }
}
