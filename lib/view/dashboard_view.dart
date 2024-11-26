import 'package:flutter/material.dart';
import 'circlearea_view.dart'; // Import the Circle Area View
import 'simpleintrest_view.dart'; // Import the Simple Interest View
import 'ari_view.dart'; // Import the Arithmetic View

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to Simple Interest Calculator
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SimpleInterestView()),
                );
              },
              child: const Text('Go to Simple Interest Calculator'),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50), // Make button full width
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to Circle Area Calculator
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CircleAreaView()),
                );
              },
              child: const Text('Go to Circle Area Calculator'),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50), // Make button full width
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to Arithmetic Calculator
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ArithmeticView()),
                );
              },
              child: const Text('Go to Arithmetic Calculator'),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50), // Make button full width
              ),
            ),
          ],
        ),
      ),
    );
  }
}
