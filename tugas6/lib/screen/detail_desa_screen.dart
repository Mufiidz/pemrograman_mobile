import 'package:flutter/material.dart';
import 'package:linkwell/linkwell.dart';

import '../model/desa.dart';

class DetailDesaScreen extends StatelessWidget {
  final Desa desa;
  const DetailDesaScreen({Key? key, required this.desa}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Desa'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Desa ${desa.title}',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.network(desa.imageMap),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Expanded(child: Text('Kode Pos')),
                Expanded(child: Text(desa.kodepos))
              ],
            ),
            Row(
              children: [
                const Expanded(child: Text('Kode Kemendagri')),
                Expanded(child: Text(desa.kemendagriCode))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(desa.desc),
            const SizedBox(
              height: 20,
            ),
            LinkWell(
              'Open in ${desa.linkMaps}',
              listOfNames: {desa.linkMaps: 'maps.'},
            )
          ],
        ),
      ),
    );
  }
}
