import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  TextEditingController _controladorNome = TextEditingController();
  TextEditingController _controladorSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Esse metodo rebuilda sempre que o State muda.

    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Aplicadtivo'), //puxa os dados da material app para buildar a barra
      ),
      body: Center(
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  controller: _controladorNome,
                  decoration: InputDecoration(
                      hintText: "Usuario",
                      labelText: "Usuário",
                      prefixIcon: Icon(Icons.person, color: Colors.orange)),
                ),
                TextField(
                  controller: _controladorSenha,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Senha",
                      labelText: "Senha",
                      prefixIcon: Icon(Icons.password, color: Colors.orange)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
