import 'package:flutter/material.dart';

class PantallaCuatro extends StatelessWidget {
  const PantallaCuatro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
          child: Text(
            'Pantalla 4',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          const Expanded(
            child: Center(
              child: Widget009(), // Adding the AnimatedCrossFade widget
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Pantalla inicial'),
            ),
          ),
        ],
      ),
    );
  }
}

// AnimatedCrossFade Widget
class Widget009 extends StatefulWidget {
  const Widget009({Key? key}) : super(key: key);

  @override
  State<Widget009> createState() => _Widget009State();
}

class _Widget009State extends State<Widget009> {
  bool _bool = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            setState(() {
              _bool = !_bool;
            });
          },
          child: const Text(
            'Switch Images',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 18,
            ),
          ),
        ),
        const SizedBox(height: 20),
        AnimatedCrossFade(
          firstChild: Container(
            color: Colors.blue,
            width: 300,
            height: 200,
            child: const Center(
                child:
                    Text('First Image', style: TextStyle(color: Colors.white))),
          ),
          secondChild: Container(
            color: Colors.green,
            width: 300,
            height: 200,
            child: const Center(
                child: Text('Second Image',
                    style: TextStyle(color: Colors.white))),
          ),
          crossFadeState:
              _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: const Duration(seconds: 1),
        ),
      ],
    );
  }
}
