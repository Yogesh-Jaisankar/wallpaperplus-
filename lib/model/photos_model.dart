class PhotosModel {
  String url;
  String photographer;
  String photographerUrl;
  int photographerId;
  SrcModel src;

  PhotosModel(
      {this.url,
      this.photographer,
      this.photographerId,
      this.photographerUrl,
      this.src});

  factory PhotosModel.fromMap(Map<String, dynamic> jsonData) {
    return PhotosModel(
        url: jsonData["url"],
        photographer: jsonData["photographer"],
        photographerId: jsonData["photographer_id"],
        photographerUrl: jsonData["photographer_url"],
        src: SrcModel.fromMap(jsonData["src"]));
  }
}

class SrcModel {
  String original;
  String small;
  String portrait;
  String medium;

  SrcModel({this.portrait, this.original, this.small});

  factory SrcModel.fromMap(Map<String, dynamic> jsonData) {
    return SrcModel(
      portrait: jsonData["portrait"],
      small: jsonData["small"],
      original: jsonData["original"],
    );
  }
}
