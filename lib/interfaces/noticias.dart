import 'dart:convert';

List<Noticias> noticiasFromJson(String str) => List<Noticias>.from(json.decode(str).map((x) => Noticias.fromJson(x)));

class Noticias{
//Atributos
  String titulo;
  String descripcion;
  String icono;
  String? fechaPublicacion;

//Constructor
  Noticias(
    {
      required this.titulo,
      required this.descripcion,
      required this.icono,
      this.fechaPublicacion,
    }
  );

  factory Noticias.fromJson(Map<String, dynamic> json) => Noticias(
        titulo: json["titulo"],
        descripcion: json["descripcion"],
        icono: json["icono"],
        fechaPublicacion: json["fecha_publicacion"],
    );
}