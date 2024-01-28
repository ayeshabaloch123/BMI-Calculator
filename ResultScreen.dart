import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final double height;
  final double weight;

  ResultPage({required this.height, required this.weight});

  @override
  Widget build(BuildContext context) {
    double bmi = weight / ((height / 100) * (height / 100));
    String result = '';

    if (bmi < 18.5) {
      result = 'Underweight';
    } else if (bmi >= 18.5 && bmi < 24.9) {
      result = 'Normal Weight';
    } else if (bmi >= 25 && bmi < 29.9) {
      result = 'Overweight';
    } else {
      result = 'Obese';
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Result'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                'assets/img2.jpg',
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height / 3,
              ),
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            elevation: 5,
            color: Colors.pinkAccent,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    'BMI: ${bmi.toStringAsFixed(2)}',
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Result: $result',
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
