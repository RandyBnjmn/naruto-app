import 'dart:convert';

class Momento {
  Momento({
    required this.id,
    required this.momento,
    required this.descripcion,
    required this.imagen,
  });

  int id;
  String momento;
  String descripcion;
  String imagen;

  factory Momento.fromJson(String str) => Momento.fromMap(json.decode(str));

  // String toJson() => json.encode(toMap());

  factory Momento.fromMap(Map<String, dynamic> json) => Momento(
        id: json["id"],
        momento: json["momento"],
        descripcion: json["descripcion"],
        imagen: json["imagen"],
      );
}
