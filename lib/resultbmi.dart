import 'package:bmi_calculator/readystuff.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final bool ismale;
  final int height;
  final int weight;
  final int age;
  final double result;
  const Result({
    super.key,
    required this.age,
    required this.ismale,
    required this.height,
    required this.weight,
    required this.result,
  });
  @override
  Widget build(BuildContext context) {
    String dialog = "";
    switch (result) {
      case < 18.5:
        dialog = "underweight";
        break;
      case >= 18.5 && <= 24.9:
        dialog = "normal weight";
        break;
      case >= 25 && <= 29.9:
        dialog = "overweight";
        break;
      case >= 30:
        dialog = "obesity";
        break;
    }
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        title: Readystuff().text(data: "BMI Result", fontsize: 25),
        leading: SizedBox(),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[100],
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Readystuff().text(data: "Body Mass Index", fontsize: 30),
            SizedBox(height: 20),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Readystuff().text(data: "Bmi Result", fontsize: 30),
                      Readystuff().text(
                        data: "${double.parse(result.toStringAsFixed(3))}",
                        fontsize: 50,
                        color: AppColors.primaryPurple,
                      ),
                      Readystuff().text(data: "Bmi Result", fontsize: 30),
                      SizedBox(height: 20),
                      Readystuff().text(data: "right now you are $dialog "),
                    ],
                  ),
                ),
              ),
            ),
            FilledButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Try Again"),
            ),
          ],
        ),
      ),
    );
  }
}
