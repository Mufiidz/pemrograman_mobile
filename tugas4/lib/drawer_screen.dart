import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String name = 'Rifqi Mufidianto';
    const String nim = '20190801102';
    const String background =
        'https://images.unsplash.com/photo-1649452815345-3f051dad11f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80';
    return Drawer(
      child: ListView(
        children: const [
          UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      fit: BoxFit.fill, image: NetworkImage(background))),
              accountName: Text(
                name,
                style: TextStyle(fontSize: 16),
              ),
              accountEmail: Text(
                nim,
                style: TextStyle(fontSize: 12),
              )),
          ListTile(
            title: Text('Name'),
            subtitle: Text(name),
            leading: Icon(Icons.person),
          ),
          ListTile(
            title: Text('NIM'),
            subtitle: Text(nim),
            leading: Icon(Icons.numbers),
          )
        ],
      ),
    );
  }
}
