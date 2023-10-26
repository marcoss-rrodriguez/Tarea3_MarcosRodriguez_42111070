import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int contador = 0;
  TextStyle estilofuente30 =
      const TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Screen", style: estilofuente30),
        elevation: 3,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Numero de Clicks", style: estilofuente30),
            Text("$contador", style: estilofuente30),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
              child: const Text(
                "+",
                style: TextStyle(fontSize: 24),
              ),
              onPressed: () {
                setState(() {
                  contador++;
                });
              }),
          const SizedBox(
            width: 80,
          ),
          FloatingActionButton(
              child: const Text(
                "-",
                style: TextStyle(fontSize: 24),
              ),
              onPressed: () {
                setState(() {
                  if (contador == 0) {
                    contador = 0;
                  } else {
                    contador--;
                  }
                });
              }),
          const SizedBox(
            width: 80,
          ),
          FloatingActionButton(
              child: const Icon(Icons.refresh),
              onPressed: () {
                setState(() {
                  contador = 0;
                });
              }),
        ],
      ),
    );
  }
}
