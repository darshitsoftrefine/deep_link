class MarketPlaceMobileList {

  String? status;
  int? pageSize;
  int? page;
  String? message;
  Data? data;

  MarketPlaceMobileList({
    this.status,
    this.pageSize,
    this.page,
    this.message,
    this.data
});

  MarketPlaceMobileList.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    pageSize = json['pageSize'];
    page = json['page'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
}

class Data {
  int? marketPlaceListCount;
  List<MarketPlaceList>? marketPlaceList;

  Data({this.marketPlaceListCount, this.marketPlaceList});

  Data.fromJson(Map<String, dynamic> json) {
    marketPlaceListCount = json['marketPlaceListCount'];
    if (json['marketPlaceList'] != null) {
      marketPlaceList = <MarketPlaceList>[];
      json['marketPlaceList'].forEach((v) {
        marketPlaceList!.add(MarketPlaceList.fromJson(v));
      });
    }
  }
}

class MarketPlaceList {
  String? id;
  String? description;
  String? name;
  String? marketPlaceUrl;
  List<Images>? images;
  List<MarketPlaceArea>? marketPlaceArea;

  MarketPlaceList({
    this.id,
    this.description,
    this.name,
    this.marketPlaceUrl,
    this.images,
    this.marketPlaceArea
  });

  MarketPlaceList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    description = json['description'];
    name = json['name'];
    marketPlaceUrl = json['marketPlaceUrl'];
    if(json['images'] != null){
      images = <Images>[];
      json['images'].forEach((v) {
        images!.add(Images.fromJson(v));
      });
    }
    if(json['marketPlaceArea'] != null){
      marketPlaceArea = <MarketPlaceArea>[];
      json['marketPlaceArea'].forEach((v) {
        marketPlaceArea!.add(MarketPlaceArea.fromJson(v));
      });
    }
  }
}

class Images {
  String? imageId;
  String? mediaType;
  String? url;

  Images({
    this.imageId,
    this.mediaType,
    this.url
});

  Images.fromJson(Map<String, dynamic> json){
    imageId = json['imageId'];
    mediaType = json['mediaType'];
    url = json['url'];
  }
}

class MarketPlaceArea {
  String? zipcode;
  double? lat;
  double? lon;

  MarketPlaceArea({
    this.zipcode,
    this.lat,
    this.lon
});

  MarketPlaceArea.fromJson(Map<String, dynamic> json){
    zipcode = json['zipcode'];
    lat = json['lat'];
    lon = json['lon'];
  }
}