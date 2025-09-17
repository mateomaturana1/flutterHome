import 'package:flutter/material.dart';

class AppEstilos {
  // Estilo para los campos de texto
  static InputDecoration inputDecoracion(String label) {
    return InputDecoration(
      labelText: label,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
    );
  }

  static InputDecoration inputDecoracionDos(String label) {
    return InputDecoration(
      labelText: label,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
      hintMaxLines: 3,
    );
  }

  // Estilo para los botones principales
  static ButtonStyle botonPrincipal = ElevatedButton.styleFrom(
    backgroundColor: Colors.blueAccent,
    foregroundColor: Colors.white,
    textStyle: TextStyle(fontSize: 16),
  );
  // Estilo de las Cards/Containers
  static BoxDecoration cardDecoracion = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(12),
    boxShadow: [
      BoxShadow(color: Colors.black26, blurRadius: 6, offset: Offset(0, 4)),
    ],
  );
}
