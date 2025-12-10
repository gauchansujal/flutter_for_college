import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final TextEditingController principal = TextEditingController();
  final TextEditingController rate = TextEditingController();
  final TextEditingController time = TextEditingController();

  String result = "0";

  void calculateSI() {
    double p = double.tryParse(principal.text) ?? 0;
    double r = double.tryParse(rate.text) ?? 0;
    double t = double.tryParse(time.text) ?? 0;

    double si = (p * r * t) / 100;

    setState(() {
      result = si.toStringAsFixed(2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Simple Interest Calculator")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: principal,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: "Principal (P)"),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: rate,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: "Rate (%)"),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: time,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: "Time (years)"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: calculateSI,
              child: const Text("Calculate"),
            ),
            const SizedBox(height: 20),
            Text(
              "Simple Interest: $result",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
