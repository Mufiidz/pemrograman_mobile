import 'package:flutter/material.dart';
import 'package:tugas6/app_route.dart';
import 'package:tugas6/model/desa.dart';
import 'package:tugas6/screen/detail_desa_screen.dart';

import '../model/wilayah.dart';

class DetailWilayahScreen extends StatelessWidget {
  final Wilayah wilayah;
  const DetailWilayahScreen({Key? key, required this.wilayah})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(wilayah.title)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Kondisi Geografis Wilayah ${wilayah.title}',
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(height: 200, child: Image.network(wilayah.image)),
              Text(
                  '${wilayah.title} luas wilayah sekitar ${wilayah.luas}, ${wilayah.desc}'),
              const SizedBox(
                height: 10,
              ),
              Text('Letak geografis : ${wilayah.letakGeografis}'),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Pilih Desa',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              wilayah.listDesa.isEmpty
                  ? const Center(
                      child: Text('Tidak ditemukan desa'),
                    )
                  : SizedBox(
                      height: wilayah.listDesa.length * 60,
                      child: ListView.builder(
                          itemExtent: 60,
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            Desa desa = wilayah.listDesa[index];
                            return ListTile(
                              leading: Text('${index + 1}'),
                              title: Text(desa.title),
                              trailing: const Icon(Icons.chevron_right),
                              onTap: () =>
                                  AppRoute.to(DetailDesaScreen(desa: desa)),
                            );
                          },
                          itemCount: wilayah.listDesa.length),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
