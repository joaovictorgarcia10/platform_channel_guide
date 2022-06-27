import 'package:flutter/material.dart';
import 'package:platform_channel_guide/channel/channel.dart';
import 'package:platform_channel_guide/segundo_exemplo.dart';

class PrimeiroExemplo extends StatefulWidget {
  const PrimeiroExemplo({Key? key}) : super(key: key);

  @override
  _PrimeiroExemploState createState() => _PrimeiroExemploState();
}

class _PrimeiroExemploState extends State<PrimeiroExemplo> {
  final examplePlatformChannel = ExamplePlatformChannel();

  String _result = '';
  String? nameRequest;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Platform Channel Guide")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: TextFormField(
                  onChanged: (val) => nameRequest = val,
                  decoration: const InputDecoration(hintText: 'Name'),
                ),
              ),
              const Text('Method Channel Result:'),
              const SizedBox(height: 20.0),
              Text(_result, style: Theme.of(context).textTheme.headline4),
            ],
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            heroTag: 'exemplo1',
            onPressed: () async {
              _result = await examplePlatformChannel.callSimpleMethodChannel();
              setState(() {});
            },
            tooltip: 'Call Method Channel',
            child: const Text('1'),
          ),
          FloatingActionButton(
            heroTag: 'exemplo2',
            onPressed: () async {
              _result = await examplePlatformChannel
                  .callSimpleMethodChannelWithParams(nameRequest);
              setState(() {});
            },
            tooltip: 'Call Method Channel with param',
            child: const Text('2'),
          ),
          FloatingActionButton(
            heroTag: 'exemplo3',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SegundoExemplo()),
              );
            },
            tooltip: 'Go to Outher Example',
            child: const Text('3'),
          ),
        ],
      ),
    );
  }
}
