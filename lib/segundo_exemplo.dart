import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // import for method channel

class SegundoExemplo extends StatefulWidget {
  const SegundoExemplo({Key? key}) : super(key: key);

  @override
  _SegundoExemploState createState() => _SegundoExemploState();
}

class _SegundoExemploState extends State<SegundoExemplo> {
  static const stream = EventChannel('unique.identifier.method/stream');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Segundo Exemplo")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Stream Method Channel Result:'),
            const SizedBox(height: 20.0),
            StreamBuilder(
                stream: stream.receiveBroadcastStream(),
                builder: (context, snapshot) {
                  return Text(
                    '${snapshot.data}',
                    style: Theme.of(context).textTheme.headline4,
                  );
                }),
          ],
        ),
      ),
    );
  }
}
