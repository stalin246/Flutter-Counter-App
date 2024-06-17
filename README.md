
# Contador de Flutter

Esta aplicación es un simple contador creado con Flutter. A través de esta aplicación, se exploran diversos conceptos y widgets de Flutter, así como técnicas de manejo de estado y diseño de interfaz de usuario.

## Archivos Principales

### main.dart

```dart
import 'package:flutter/material.dart';
import 'package:hello_world_app_1/presentation/screens/counter/counter_functions_screen.dart';

void main() {
  runApp(const MyApp()); 
}

class MyApp extends StatelessWidget { 
  const MyApp({super.key}); 

  @override 
  Widget build(BuildContext context) { 
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.red
      ),
      home: const CounterFunctionsScreen()
    );
  }
}
```

#### Explicación:
- `main.dart`: Este archivo es el punto de entrada de la aplicación. Configura la aplicación principal utilizando `MaterialApp`.
- `runApp`: Lanza la aplicación con el widget raíz `MyApp`.
- `MyApp`: Define la configuración principal de la aplicación, incluyendo el tema y la pantalla inicial.

### counter_functions_screen.dart

```dart
import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Functions'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text(
              (clickCounter != -1 && clickCounter != 1) ? 'clicks' : 'click',
              style: const TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(
            ico: Icons.refresh_outlined,
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          ),
          const SizedBox(height: 20),
          CustomButton(
            ico: Icons.plus_one,
            onPressed: () {
              setState(() {
                clickCounter++;
              });
            },
          ),
          const SizedBox(height: 20),
          CustomButton(
            ico: Icons.exposure_minus_1_outlined,
            onPressed: () {
              setState(() {
                clickCounter--;
              });
            },
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData ico;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key, required this.ico, this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      enableFeedback: true,
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
      splashColor: const Color.fromARGB(255, 33, 243, 215),
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(ico),
    );
  }
}
```

#### Explicación:
- `CounterFunctionsScreen`: Este archivo define la pantalla principal del contador, utilizando `StatefulWidget` para manejar el estado mutable.
- `CustomButton`: Un widget personalizado para los botones flotantes, que permite reutilizar el código de los botones con diferentes iconos y acciones.

## Conceptos Clave y Widgets Utilizados

### Widgets Principales

- **Scaffold**: Proporciona una estructura de diseño básica para la pantalla.
- **AppBar**: Barra de aplicaciones en la parte superior de la pantalla.
- **Center**: Centra su hijo dentro de sí mismo.
- **Column**: Organiza sus hijos en una columna vertical.
- **Text**: Muestra una cadena de texto.
- **FloatingActionButton**: Un botón flotante utilizado para acciones principales.
- **IconButton**: Un botón que muestra un icono y ejecuta una acción cuando se presiona.
- **Icon**: Muestra un icono.

### Manejo de Estado

- **StatefulWidget**: Un widget que tiene un estado mutable que puede cambiar durante la vida útil del widget.
- **setState**: Notifica al framework que el estado del widget ha cambiado, provocando una reconstrucción del widget.

### Personalización y Tematización

- **MaterialApp**: Configura la aplicación y permite personalizar la apariencia visual.
- **ThemeData**: Define la apariencia visual de la aplicación, incluyendo colores, tipografías y estilos.

## Ejemplos y Explicación Adicional

### Ejemplo de StatefulWidget

```dart
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Widget Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
```

#### Explicación:
- **StatefulWidget**: Utilizado para widgets que cambian dinámicamente.
- **setState**: Llama al método para actualizar el estado y reconstruir el widget.

### Ejemplo de Column

```dart
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    Text('First Text'),
    Text('Second Text'),
  ],
);
```

#### Explicación:
- **Column**: Organiza sus hijos en una columna vertical.
- **mainAxisAlignment**: Define cómo alinear los hijos verticalmente.

## Recursos Adicionales

Para más información sobre Flutter y sus widgets, puedes consultar la [documentación oficial de Flutter](https://flutter.dev/docs).

