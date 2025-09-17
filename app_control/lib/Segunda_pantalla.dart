import 'package:flutter/material.dart';

// Widget sin estado para la segunda pantalla.
class SecondPage extends StatelessWidget {
  final String nombre; // Variable para el nombre
  final String edad; // Variable para la edad
  final String telefono; // Variable para el telefono

  // Constructor que recibe nombre y edad como parámetros requeridos
  const SecondPage({
    required this.nombre,
    required this.edad,
    required this.telefono,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Construye la interfaz de la segunda pantalla.
    return Scaffold(
      appBar: AppBar(title: Text('Segunda Pantalla')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nombre recibido: $nombre',
              style: TextStyle(fontSize: 22, color: Colors.black),
            ),
            SizedBox(height: 16),
            Text(
              'Edad recibida: $edad',
              style: TextStyle(fontSize: 22, color: Colors.black),
            ),
            SizedBox(height: 16),
            Text(
              'Telefono recibido: $telefono',
              style: TextStyle(fontSize: 22, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
