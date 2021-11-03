
import 'dart:convert';

class Personaje {
    Personaje({
        required this.id,
        required this.nombre,
        required this.descripcion,
        required this.imagen,
    });

    int id;
    String nombre;
    String descripcion;
    String imagen;

    factory Personaje.fromJson(String str) => Personaje.fromMap(json.decode(str));

    // String toJson() => json.encode(toMap());

    factory Personaje.fromMap(Map<String, dynamic> json) => Personaje(
        id: json["id"],
        nombre: json["nombre"],
        descripcion: json["descripcion"],
        imagen: json["imagen"],
    );

    // Map<String, dynamic> toMap() => {
    //     "id": id,
    //     "nombre": nombre,
    //     "descripcion": descripcion,
    //     "imagen": imagen,
    // };
}
