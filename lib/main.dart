import 'package:bonillarutas/pagina_tres.dart';
import 'package:flutter/material.dart';
import 'package:bonillarutas/pagina_inicial.dart';
import 'package:bonillarutas/pagina_dos.dart';
import 'package:bonillarutas/pagina_cuatro.dart';
import 'package:bonillarutas/pagina_cinco.dart';
import 'package:bonillarutas/pagina_seis.dart';
import 'package:bonillarutas/pagina_siete.dart';

void main() => runApp(MiRuta());

class MiRuta extends StatelessWidget {
  const MiRuta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre paginas',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const PantallaUno(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/pantalla2': (context) => const PantallaDos(),
        '/pantalla3': (context) => const PantallaTres(),
        '/pantalla4': (context) => const PantallaCuatro(),
        '/pantalla5': (context) => const PantallaCinco(),
        '/pantalla6': (context) => const PantallaSeis(),
        '/pantalla7': (context) => const PantallaSiete(),
      },
    );
  }
}
