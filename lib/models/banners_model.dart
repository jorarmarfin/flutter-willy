class BannersModel {
  final List<BannerModel> banners;

  BannersModel({
    required this.banners,
  });

  factory BannersModel.fromJson(List<dynamic> parsedJson) {
    List<BannerModel> banners = [];
    banners = parsedJson.map((i) => BannerModel.fromJson(i)).toList();

    return BannersModel(banners: banners);
  }
}

class BannerModel {
  BannerModel({
    required this.id,
    required this.cctStatus,
    required this.nombre,
    required this.cctAuthorId,
    required this.cctCreated,
    required this.cctModified,
    required this.imagen,
    required this.enlace,
    required this.cctSlug,
  });

  String id;
  String cctStatus;
  String nombre;
  String cctAuthorId;
  String cctCreated;
  String cctModified;
  String imagen;
  String enlace;
  String cctSlug;

  factory BannerModel.fromJson(Map<String, dynamic> json) {
    return BannerModel(
        id: json['_ID'],
        cctStatus: json['cct_status'],
        nombre: json['nombre'],
        cctAuthorId: json['cct_author_id'],
        cctCreated: json['cct_created'],
        cctModified: json['cct_modified'],
        imagen: json['imagen'],
        enlace: json['enlace'],
        cctSlug: json['cct_slug']);
  }
}
