class PhotoModel {
  final List<PhotoItemModel> photos;
  final int? page;
  final int? perPage;
  final int? totalResult;

  PhotoModel({
    this.photos = const [],
    this.page,
    this.perPage,
    this.totalResult,
  });

  factory PhotoModel.fromJson(Map<String, dynamic> json) {
    final List<dynamic> photoItems = json['photos'] ?? [];
    final photos = photoItems.map((item) => PhotoItemModel.fromJson(item)).toList();

    return PhotoModel(
      photos: photos,
      page: json['page'],
      perPage: json['per_page'],
      totalResult: json['total_results'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'photos': photos.map((photo) => photo.toJson()).toList(),
      'page': page,
      'per_page': perPage,
      'total_results': totalResult,
    };
  }
}

class PhotoItemModel {
  final int id;
  final String url;
  final String photographer;
  final String avgColor;
  final PhotoSrcModel src;
  final String? alt;

  PhotoItemModel({
    required this.id,
    required this.url,
    required this.photographer,
    required this.avgColor,
    required this.src,
    this.alt,
  });

  factory PhotoItemModel.fromJson(Map<String, dynamic> json) {
    return PhotoItemModel(
      id: json['id'],
      url: json['url'],
      photographer: json['photographer'],
      avgColor: json['avg_color'],
      src: PhotoSrcModel.fromJson(json['src']),
      alt: json['alt'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'url': url,
      'photographer': photographer,
      'avg_color': avgColor,
      'src': src.toJson(),
      'alt': alt,
    };
  }
}

class PhotoSrcModel {
  final String original;
  final String large;
  final String portrait;

  PhotoSrcModel({
    required this.original,
    required this.large,
    required this.portrait,
  });

  factory PhotoSrcModel.fromJson(Map<String, dynamic> json) {
    return PhotoSrcModel(
      original: json['original'],
      large: json['large'],
      portrait: json['portrait'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'original': original,
      'large': large,
      'portrait': portrait,
    };
  }
}
