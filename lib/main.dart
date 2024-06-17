import 'package:flutter/material.dart';
import 'package:hello_world_app_1/presentation/screens/counter/counter_functions_screen.dart';
// import 'package:hello_world_app_1/presentation/screens/counter/counter_screen.dart';

// Función principal que inicia la ejecución de la aplicación Flutter.
void main() {
  runApp(const MyApp()); 
  // runApp toma el widget raíz de la aplicación y lo infla en la pantalla.
}

// La clase MyApp extiende StatelessWidget, lo que significa que esta pantalla no tiene estado mutable.
class MyApp extends StatelessWidget { 
  const MyApp({super.key}); 
  
  // Método build que describe cómo se debe construir la interfaz de usuario de este widget.
  @override 
  Widget build(BuildContext context) { 
    return MaterialApp(
      // MaterialApp es un widget que envuelve varias configuraciones comunes de la aplicación.
      debugShowCheckedModeBanner: false, // Oculta el banner de depuración en la esquina superior derecha de la pantalla.
      theme: ThemeData(
        // ThemeData permite personalizar la apariencia visual de la aplicación.
        colorSchemeSeed: Colors.red // Semilla de esquema de color para generar un esquema de color.
      ),
      home: const CounterFunctionsScreen() // Define la pantalla principal de la aplicación.
    );
  }
}
