import 'package:flutter/material.dart';

// La clase CounterFunctionsScreen extiende StatefulWidget, lo que significa que esta pantalla tiene un estado mutable.
class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  // El método createState crea el estado mutable para este widget.
  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

// La clase _CounterFunctionsState extiende State<CounterFunctionsScreen>, donde se maneja el estado mutable de CounterFunctionsScreen.
class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {

  int clickCounter = 0; // Define una variable de estado que empieza en cero.

  // Método build que describe cómo se debe construir la interfaz de usuario de este widget.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold es un widget de estructura de diseño para la implementación de la estructura visual básica de la pantalla.
      appBar: AppBar(
        // AppBar es un widget que proporciona una barra de aplicaciones en la parte superior de la pantalla.
        title: const Text('Funciones de Contador'), // Título de la AppBar
        centerTitle: true, // Centra el título en la AppBar
        actions: [
          IconButton(
            // IconButton es un widget especializado para mostrar iconos interactivos.
            icon: const Icon(Icons.refresh_rounded), // Icono del botón de reinicio
            onPressed: () {
              // Al presionar el botón, se reinicia el contador a 0.
              setState(() {
                clickCounter = 0; // Reinicia la variable clickCounter a 0.
              });
            },
          ),
        ], // Lista de widgets que pueden ser agregados al AppBar como acciones.
      ),
      body: Center(
        // Center es un widget que centra su hijo dentro de sí mismo.
        child: Column(
          // Column es un widget que organiza sus hijos en una columna vertical.
          mainAxisAlignment: MainAxisAlignment.center, // Centra verticalmente los widgets hijos
          children: [
            // Lista de widgets hijos dentro de Column
            Text(
              '$clickCounter',
              // Muestra el valor de la variable clickCounter.
              style: const TextStyle(
                fontSize: 160, // Tamaño de la fuente
                fontWeight: FontWeight.w100, // Peso de la fuente
              ),
            ),
            Text(
              // Uso de un operador ternario para determinar el texto que se muestra.
              (clickCounter != -1 && clickCounter != 1) ? 'clicks' : 'click',
              // Si clickCounter no es -1 ni 1, muestra 'clicks'. De lo contrario, muestra 'click'.
              style: const TextStyle(
                fontSize: 25, // Tamaño de la fuente
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        // Column es un widget que organiza sus hijos en una columna vertical.
        mainAxisAlignment: MainAxisAlignment.end, // Mantiene el botón en la parte inferior
        children: [
          CustomButton(
            ico: Icons.refresh_outlined, // Icono del botón de refresco
            onPressed: () {
              setState(() {
                clickCounter = 0; // Reinicia la variable clickCounter a 0.
              });
            },
          ),
          const SizedBox(height: 20), // Espacio entre los botones
          CustomButton(
            ico: Icons.plus_one, // Icono del botón para incrementar
            onPressed: () {
              setState(() {
                clickCounter++; // Incrementa la variable clickCounter en 1.
              });
            },
          ),
          const SizedBox(height: 20), // Espacio entre los botones
          CustomButton(
            ico: Icons.exposure_minus_1_outlined, // Icono del botón para decrementar
            onPressed: () {
              setState(() {
                clickCounter--; // Decrementa la variable clickCounter en 1.
              });
            },
          ),
        ],
      ),
    );
  }
}

// La clase CustomButton extiende StatelessWidget y es un widget personalizado reutilizable.
class CustomButton extends StatelessWidget {

  final IconData ico; // Define una variable final que almacena el icono a mostrar.
  final VoidCallback? onPressed; // Define una variable final para la función de callback al presionar el botón.

  // Constructor que inicializa las variables ico y onPressed.
  const CustomButton({
    super.key, required this.ico, this.onPressed,
  });

  // Método build que describe cómo se debe construir la interfaz de usuario de este widget.
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      // FloatingActionButton es un botón flotante que suele utilizarse para acciones principales.
      enableFeedback: true, // Habilita la retroalimentación táctil.
      backgroundColor: Colors.blue, // Color de fondo del botón.
      foregroundColor: Colors.white, // Color del icono.
      splashColor: const Color.fromARGB(255, 33, 243, 215), // Color de la animación splash al presionar el botón.
      shape: const StadiumBorder(), // Forma del botón con bordes circulares.
      onPressed: onPressed, // Llama a la función onPressed pasada como argumento.
      child: Icon(ico), // Muestra el icono pasado como argumento.
    );
  }
}
