class MaterialesModel {
  final List<MaterialModel> materiales;

  MaterialesModel({
    required this.materiales,
  });

  factory MaterialesModel.fromJson(List<dynamic> parsedJson) {
    List<MaterialModel> materiales = [];
    materiales = parsedJson.map((i) => MaterialModel.fromJson(i)).toList();

    return MaterialesModel(materiales: materiales);
  }
}

class MaterialModel {
  MaterialModel(
      {required this.nombre,
      required this.imagen,
      required this.enlace,
      required this.descripcion});

  String nombre;
  String imagen;
  String enlace;
  String descripcion;

  factory MaterialModel.fromJson(Map<String, dynamic> json) {
    return MaterialModel(
        nombre: json['nombre'],
        imagen: json['imagen'],
        enlace: json['enlace'],
        descripcion: json['descripcion']);
  }
}
