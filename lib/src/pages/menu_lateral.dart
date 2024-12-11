import 'package:flutter/material.dart';

class MenuLateral extends StatefulWidget {
  const MenuLateral({super.key});

  @override
  _MenuLateralState createState() => _MenuLateralState();
}

class _MenuLateralState extends State<MenuLateral> {
  String _content = "Contenido del Proyecto";

  void _updateContent(String newContent) {
    setState(() {
      _content = newContent;
    });
    Navigator.pop(context); // Cierra el drawer después de seleccionar una opción
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina Principal"),
        backgroundColor: Color.fromARGB(255, 168, 166, 166),
      ),
      body: Center(
        child: Text(
          _content,
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Daniela Morocho"),
              accountEmail: Text("dgc.morocho@yavirac.edu.ec "),
              currentAccountPicture: CircleAvatar(
                foregroundImage: AssetImage("images/cora.jpg"),
              ),
              decoration:
                  BoxDecoration(color: Color.fromARGB(224, 145, 98, 98)),
            ),
            Padding(
              padding: EdgeInsets.all(14.0),
              child: Text("Etiqueta 1"),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Inicio"),
              onTap: () => _updateContent("Bienvenido a la página de Inicio"),
            ),
            ListTile(
              leading: Icon(Icons.shop),
              title: Text("Tienda"),
              onTap: () => _updateContent("Sección de la Tienda"),
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text("Tus me gusta"),
              onTap: () => _updateContent("Tus elementos favoritos"),
            ),
            Padding(
              padding: EdgeInsets.all(14.0),
              child: Text("Etiqueta 2"),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Correo 1"),
              onTap: () => _updateContent("Bandeja de correo 1"),
            ),
            ListTile(
              leading: Icon(Icons.calendar_month),
              title: Text("Calendario"),
              onTap: () => _updateContent("Agenda y calendario"),
            ),
            ListTile(
              leading: Icon(Icons.maps_home_work),
              title: Text("Maps"),
              onTap: () => _updateContent("Ubicaciones en el mapa"),
            ),
          ],
        ),
      ),
    );
  }
}