import 'dart:convert';

class Dosen {
  int id;
  String dosenId;
  String name;
  String rumpun;
  String programStudy;
  String email;

  Dosen({
    required this.id,
    required this.dosenId,
    required this.name,
    required this.rumpun,
    required this.programStudy,
    required this.email,
  });

  String setDosenId() => 'Dosen00$id';

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'dosenId': dosenId});
    result.addAll({'name': name});
    result.addAll({'rumpun': rumpun});
    result.addAll({'programStudy': programStudy});
    result.addAll({'email': email});

    return result;
  }

  factory Dosen.fromMap(Map<String, dynamic> map) {
    return Dosen(
      id: map['id']?.toInt() ?? 0,
      dosenId: map['dosenId'] ?? '',
      name: map['name'] ?? '',
      rumpun: map['rumpun'] ?? '',
      programStudy: map['programStudy'] ?? '',
      email: map['email'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Dosen.fromJson(String source) => Dosen.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Dosen(id: $id, dosenId: $dosenId, name: $name, rumpun: $rumpun, programStudy: $programStudy, email: $email)';
  }
}
