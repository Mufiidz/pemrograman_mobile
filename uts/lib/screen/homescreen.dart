import 'package:flutter/material.dart';

import '../app_route.dart';
import '../model/wilayah.dart';
import '../src/data.dart';
import 'detail_wilayah_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String background =
        'https://www.bekasikota.go.id/uploads/post/0c36d6e56b80e7e8b508cdd81d640b3f.jpg';
    return Scaffold(
      appBar: AppBar(
        title: const Text('SIGD Bekasi'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    image: DecorationImage(
                        fit: BoxFit.fill, image: NetworkImage(background))),
                accountName: Text('Sistem Informasi Geografis'),
                accountEmail: Text('Bekasi')),
            SizedBox(
              height: listWilayah.length * 45,
              child: ListView.builder(
                  itemExtent: 48,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: listWilayah.length,
                  itemBuilder: (context, index) {
                    Wilayah wilayah = listWilayah[index];
                    return ListTile(
                      title: Text(wilayah.title),
                      onTap: () => AppRoute.to(DetailWilayahScreen(
                        wilayah: wilayah,
                      )),
                    );
                  }),
            )
          ],
        ),
      ),
      body: ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: listWilayah.length,
          itemBuilder: (context, index) {
            Wilayah wilayah = listWilayah[index];
            return Padding(
              padding: const EdgeInsets.only(top: 8, right: 16, left: 16),
              child: ListTile(
                title: Text(wilayah.title),
                trailing: const Icon(Icons.chevron_right),
                onTap: () => AppRoute.to(DetailWilayahScreen(
                  wilayah: wilayah,
                )),
              ),
            );
          }, separatorBuilder: (BuildContext context, int index) => const Divider(),),
    );
  }
}
