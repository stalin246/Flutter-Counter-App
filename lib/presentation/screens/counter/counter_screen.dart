import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}
class _CounterScreenState extends State<CounterScreen> {

int clickCounter = 0; // Defines la variable que empieze de cero

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        title: const Text('Funciones de Contador'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter', 
            style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100)
            ),
             Text(
              (clickCounter == 0 || clickCounter >= 2) ? 'clicks' : 'click',
              style: const TextStyle(fontSize: 25),

              ),

          ],
        ),
      ),
      floatingActionButton : FloatingActionButton(
        onPressed: () {
          // Aqui cambiaremos el estado del widget usando la variable que creamos

          clickCounter++; // Sera incrmentable +1 la variable 
          // Usamos setState para renderizar o guardar los cambios de la aplacion
          setState(() {
            
          });
        },
        child: const Icon( Icons.plus_one, color: Colors.blue),
        ), 
      //
      // 
    );
  }
} 
