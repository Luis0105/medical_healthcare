// Punto de entrada de la aplicación Flutter
import 'package:flutter/material.dart';
import 'package:medical_healthcare/screens/welcome_screen.dart';

void main() {
  runApp(MyApp()); // Ejecuta la aplicación
}

class MyApp extends StatelessWidget {
  // Widget raíz de la app
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Oculta la etiqueta de debug
      home:
          WelcomeScreen(), // Define la pantalla de inicio como la pantalla de bienvenida
    );
  }
}
