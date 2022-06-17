import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // Tema da aplicação
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'GDL - Gestão em Logistica'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // É o widget de tela inicial.
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  void _incrementCounter() {
    setState(() {
      //Atualiza valores de uma variavel.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Esse metodo rebuilda sempre que o State muda.
    return Scaffold(
      appBar: AppBar(
        title: Text(
            widget.title), //puxa os dados da material app para buildar a barra
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: username,
              decoration: InputDecoration(
                  hintText: "Usuario",
                  labelText: "Usuário",
                  prefixIcon: Icon(Icons.person, color: Colors.orange)),
            ),
            TextField(
              controller: password,
              decoration: InputDecoration(
                  hintText: "Senha",
                  labelText: "Senha",
                  prefixIcon: Icon(Icons.password, color: Colors.orange)),
            ),
          ],
        ),
      ),
    );
  }
}
