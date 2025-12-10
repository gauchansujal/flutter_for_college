import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController num1 = TextEditingController();
  final TextEditingController num2 = TextEditingController();
  String result = "0";

  void calculateSum() {
    int a = int.tryParse(num1.text) ?? 0;
    int b = int.tryParse(num2.text) ?? 0;

    setState(() {
      result = (a + b).toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sum of Two Numbers")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: num1,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Enter first number",
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: num2,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Enter second number",
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: calculateSum, child: const Text("Add")),
            const SizedBox(height: 20),
            Text(
              "Result: $result",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
