import "models/item.dart";
import "package:flutter/material.dart";

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Todo App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

//isso aqui em baixo é uma pagina
class HomePage extends StatefulWidget {
  HomePage(){
    items[];
  }

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //leading: Text("Oi"),
          title: Text("Titulo"),
          actions: <Widget>[
            Icon(Icons.plus_one),
          ],
        ),
        body: Container(
            child: Center(
          child: Text("Ola mundo"),
        )));
  }
}
