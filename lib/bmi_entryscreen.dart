import 'package:bmi_calculator/readystuff.dart';
import 'package:bmi_calculator/resultbmi.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int age = 30;
  int weight = 50;
  bool ismale = true;
  double height = 180;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        centerTitle: true,
        title: Text("Bmi Calculator", style: Readystuff().fontoswald()),
        backgroundColor: Colors.deepPurple[100],
      ),
      body: SafeArea(
        bottom: true,
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Age", style: Readystuff().fontoswald()),
                            Text(
                              "$age",
                              style: Readystuff().fontstyle(fontsize: 30),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton.filled(
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  icon: Icon(Icons.remove),
                                ),
                                SizedBox(width: 12.0),
                                IconButton.filled(
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  icon: Icon(Icons.add),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Weight", style: Readystuff().fontoswald()),
                            Text(
                              "$weight",
                              style: Readystuff().fontstyle(fontsize: 30),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton.filled(
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  icon: Icon(Icons.remove),
                                ),
                                SizedBox(width: 12.0),
                                IconButton.filled(
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  icon: Icon(Icons.add),
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
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 5,
                ),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Readystuff().text(data: "height (cm)", fontsize: 20),
                      Readystuff().text(
                        data: "${height.round()}",
                        fontsize: 30,
                        color: AppColors.primaryPurple,
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Colors.grey[300],
                          inactiveTrackColor: Colors.grey[300],
                          thumbColor: AppColors.primaryPurple,
                          trackShape: RoundedRectSliderTrackShape(),
                          trackHeight: 2.0,
                        ),
                        child: Slider(
                          value: height,
                          min: 100.0,
                          max: 250.0,
                          onChanged: (value) {
                            setState(() {
                              height = value;
                            });
                          },
                        ),

                        // inactiveColor: AppColors.labelText,
                        // activeColor: AppColors.labelText,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: EdgeInsets.all(10),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Gender",
                        style: Readystuff().fontoswald(fontsize: 20),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "  female",
                            style: Readystuff().fontoswald(fontsize: 20),
                          ),
                          Switch(
                            thumbIcon: WidgetStateProperty.all(
                              Icon(Icons.circle, color: Colors.white),
                            ),
                            value: ismale,
                            inactiveTrackColor: AppColors.primaryPurple,
                            inactiveThumbColor: Colors.white,
                            activeTrackColor: AppColors.primaryPurple,
                            onChanged: (value) {
                              setState(() {
                                ismale = value;
                              });
                            },
                          ),
                          Text(
                            "male",
                            style: Readystuff().fontoswald(fontsize: 20),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: FilledButton(
                onPressed: () {
                  double result = weight / ((height / 100) * (height / 100));
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => Result(
                        age: age,
                        height: height.round(),
                        weight: weight,
                        ismale: ismale,
                        result: result,
                      ),
                    ),
                  );
                },
                child: Text("Calculate BMI"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
