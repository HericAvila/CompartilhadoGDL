import 'package:flutter/material.dart';
import 'app_controller.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'GDL Gestão em Logistica',
        ),
      ),
      body: Container(
        color: Color.fromARGB(255, 62, 83, 94),
        padding: EdgeInsets.only(left: 15, right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.brightness_high_rounded,
                      color: Colors.amber,
                      size: 10,
                    ),
                    Switch(
                      value: AppController.instance.isDarkTheme,
                      onChanged: (value) {
                        AppController.instance.changeTheme();
                      },
                    ),
                  ],
                ),
              ],
            ),
            Text(''),
            Column(
              children: [
                Image.asset(
                  'imagens/GDL.png',
                ),
                TextField(
                  controller: _controladorNome,
                  decoration: InputDecoration(
                      //filled: true, //<-- SEE HERE
                      //fillColor: Colors.white, //<-- SEE HERE
                      labelText: "Usuário",
                      prefixIcon: Icon(Icons.person, color: Colors.orange)),
                ),
                //Divider(),
                TextField(
                  controller: _controladorSenha,
                  obscureText: true,
                  decoration: InputDecoration(
                      //filled: true,
                      //fillColor: Colors.white,
                      labelText: "Senha",
                      prefixIcon: Icon(Icons.password, color: Colors.orange)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                    child: Icon(Icons.login_outlined), onPressed: () {})
              ],
            ),
          ],
        ),
      ),
    );
  }
}
