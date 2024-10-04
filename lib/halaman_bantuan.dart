import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class HalamanBantuan extends StatefulWidget {
  const HalamanBantuan({super.key});

  @override
  _HalamanBantuanState createState() => _HalamanBantuanState();
}

class _HalamanBantuanState extends State<HalamanBantuan> {
  String _script = '';
  late Future<void> _scriptFuture;

  Future<void> _loadScript() async {
    final String text = await rootBundle.loadString('assets/script_writing.txt');
    setState(() {
      _script = text;
    });
  }

  @override
  void initState() {
    super.initState();
    _scriptFuture = _loadScript();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Bantuan'),
        backgroundColor: Colors.blue,
      ),
      body: FutureBuilder(
        future: _scriptFuture,  
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.asset('assets/customerService.png', height: 200),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    _script,
                    style: const TextStyle(fontSize: 11),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
