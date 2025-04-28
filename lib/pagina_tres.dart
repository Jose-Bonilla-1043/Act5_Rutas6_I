import 'package:flutter/material.dart';

class PantallaTres extends StatelessWidget {
  const PantallaTres({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
          child: Text(
            'Pantalla 3',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          // Botón para regresar
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Pantalla inicial'),
            ),
          ),

          // Espaciador
          const SizedBox(height: 20),

          // Widget006 integrado
          Expanded(
            child: _Widget006Integration(),
          ),
        ],
      ),
    );
  }
}

// Versión adaptada de Widget006 para integrar en PantallaTres
class _Widget006Integration extends StatefulWidget {
  const _Widget006Integration({Key? key}) : super(key: key);

  @override
  State<_Widget006Integration> createState() => __Widget006IntegrationState();
}

class __Widget006IntegrationState extends State<_Widget006Integration> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: Container(
          width: double.infinity,
          height: 250.0,
          color: Colors.blueGrey,
          child: AnimatedAlign(
            alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
            duration: const Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            child: const FlutterLogo(size: 50.0),
          ),
        ),
      ),
    );
  }
}
