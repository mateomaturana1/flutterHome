import 'package:flutter/material.dart'; // Importa el paquete de Flutter para interfaces gráficas.
import 'Segunda_pantalla.dart'; // Importa la segunda pantalla a la que se navega.
import 'Styles/styles.dart'; // Importa los estilos personalizados.

// Widget con estado para la página del formulario.
class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState(); // Crea el estado asociado.
}

class _FormPageState extends State<FormPage> {
  // Controladores para los campos de texto.
  final TextEditingController nombreController = TextEditingController();
  final TextEditingController edadController = TextEditingController();
  final TextEditingController telefonoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Construye la interfaz de la página.
    return Scaffold(
      appBar: AppBar(title: Text("Formulario")), // Barra superior con título.
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Espaciado externo.
        child: Container(
          decoration: AppEstilos.cardDecoracion, // Decoración personalizada.
          padding: EdgeInsets.all(20), // Espaciado interno.
          child: Column(
            mainAxisSize: MainAxisSize.min, // Ajusta el tamaño de la columna.
            children: [
              // Campo de texto para el nombre.
              TextField(
                controller: nombreController, // Controlador para el nombre.
                decoration: AppEstilos.inputDecoracion(
                  "Nombre",
                ), // Decoración personalizada.
              ),
              SizedBox(height: 16), // Espacio entre campos.
              // Campo de texto para la edad.
              TextField(
                controller: edadController, // Controlador para la edad.
                decoration: AppEstilos.inputDecoracion(
                  "Edad",
                ), // Decoración personalizada.
                keyboardType: TextInputType.number, // Teclado numérico.
              ),
              SizedBox(height: 20), // Espacio antes del botón.
              // Campo de texto para el nombre.
              TextField(
                controller: telefonoController, // Controlador para el nombre.
                decoration: AppEstilos.inputDecoracionDos(
                  "Telefono",
                ), // Decoración personalizada.
              ),
              // Botón para enviar el formulario.
              ElevatedButton(
                style: AppEstilos
                    .botonPrincipal, // Estilo personalizado del botón.
                child: Text("Enviar"), // Texto del botón.
                onPressed: () {
                  // Al presionar, navega a la segunda pantalla y pasa los datos ingresados.
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondPage(
                        nombre:
                            nombreController.text, // Pasa el nombre ingresado.
                        edad: edadController.text, // Pasa la edad ingresada.
                        telefono:
                            telefonoController.text, // Pasa la edad ingresada.
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
