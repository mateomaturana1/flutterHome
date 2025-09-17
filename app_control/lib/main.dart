import 'package:app_control/FormPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo Formulario con Estilos',
      theme: ThemeData.light(),
      home: FormPage(), // Llama a la primera pantalla (formulario)
    );
  }
}
