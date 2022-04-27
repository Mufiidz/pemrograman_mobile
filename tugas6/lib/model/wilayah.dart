import 'desa.dart';

class Wilayah {
  String title, desc, image, letakGeografis, luas;
  List<Desa> listDesa;

  Wilayah(
      {this.title = '-',
      this.desc = '-',
      this.image = '-',
      this.letakGeografis = '-',
      this.luas = '0 Km²',
      this.listDesa = const []});
}
