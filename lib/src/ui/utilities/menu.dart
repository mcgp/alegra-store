import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            padding: const EdgeInsets.all(0),
            decoration: const BoxDecoration(),
            child: SizedBox(
              child: Image.asset(
                "assets/img/alegra_lingh.jpeg",
                fit: BoxFit.fill,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.inventory_rounded,
            ),
            title: Text(
              'Productos',
              style: TextStyle(color: Colors.blueGrey[600]),
            ),
            onTap: () {
              Navigator.pushNamed(context, 'lista_articulo');
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.inventory_rounded,
            ),
            title: Text(
              'Informe',
              style: TextStyle(color: Colors.blueGrey[600]),
            ),
            onTap: () {
              Navigator.pushNamed(context, 'informe');
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.qr_code,
            ),
            title: Text(
              'Leer Código de Barras',
              style: TextStyle(color: Colors.blueGrey[600]),
            ),
            onTap: () {
              Navigator.pushNamed(context, 'scanner');
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.wysiwyg_outlined,
            ),
            title: Text(
              'Reporte ventas',
              style: TextStyle(color: Colors.blueGrey[600]),
            ),
            onTap: () {
              Navigator.pushNamed(context, 'reportVentas');
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(
              Icons.logout,
            ),
            title: Text(
              'Cerrar Sesión',
              style: TextStyle(color: Colors.blueGrey[600]),
            ),
            onTap: () {
              //Navigator.pushNamed(context, 'informe');
            },
          ),
        ],
      ),
    );
  }
}
