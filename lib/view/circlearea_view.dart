import 'package:flutter/material.dart';
import 'dart:math'; // To use pi

class CircleAreaView extends StatefulWidget {
  const CircleAreaView({super.key});

  @override
  State<CircleAreaView> createState() => _CircleAreaViewState();
}

class _CircleAreaViewState extends State<CircleAreaView> {
  double radius = 0;
  double circleArea = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circle Area Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                radius = double.tryParse(value) ?? 0;
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Radius of Circle',
              ),
            ),
            const SizedBox(height: 8),
            Text('Area of Circle: ${circleArea.toStringAsFixed(2)} sq units',
                style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    circleArea = pi * radius * radius;
                  });
                },
                child: const Text('Calculate Circle Area'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
