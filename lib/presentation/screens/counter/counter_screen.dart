import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter Screen'),
          actions: [
            IconButton(
                onPressed: () {
                  // Para que la información se renderice en la vista
                  // tenemos que indidar que recargue el Widget
                  // así que metemos el incremento en el método de recarga
                  setState(() {
                    clickCounter = 0;
                  });
                },
                icon: Icon(Icons.refresh_rounded))
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$clickCounter',
                style:
                    const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
              ),
              Text(
                (clickCounter == 1) ? 'Click' : 'Clicks',
                style: const TextStyle(fontSize: 25),
              )
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              shape: StadiumBorder(), // hace el botón circular
              onPressed: () {
                // Para que la información se renderice en la vista
                // tenemos que indidar que recargue el Widget
                // así que metemos el incremento en el método de recarga
                setState(() {
                  clickCounter++;
                });
              },
              child: const Icon(Icons.plus_one),
            ),
            SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              shape: StadiumBorder(), // hace el botón circular
              onPressed: () {
                // Para que la información se renderice en la vista
                // tenemos que indidar que recargue el Widget
                // así que metemos el incremento en el método de recarga
                setState(() {
                  clickCounter--;
                });
              },
              child: const Icon(Icons.exposure_minus_1_outlined),
            )
          ],
        ));
  }
}
