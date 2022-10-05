import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Progrees Bar"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: CircularPercentIndicator(
                    animation: true,
                    animationDuration: 2000,
                    lineWidth: 8,
                    footer: Text(
                      "Used this Month",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    center: Text(
                      "80%",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    progressColor: Colors.redAccent,
                    percent: 80 / 100,
                    radius: 50)),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 30,
              child: LinearPercentIndicator(
                  animation: true,
                  animationDuration: 2000,
                  //width: 8,
                  alignment: MainAxisAlignment.center,
                  trailing: Text(
                    "Used this Month",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  leading: Text(
                    "70%",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  progressColor: Colors.redAccent,
                  percent: 70 / 100,
                  width: 150),
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
