class ItemListModel {
  List<Record>? record;
  Metadata? metadata;

  ItemListModel({this.record, this.metadata});

  ItemListModel.fromJson(Map<String, dynamic> json) {
    if (json['record'] != null) {
      record = <Record>[];
      json['record'].forEach((v) {
        record!.add(new Record.fromJson(v));
      });
    }
    metadata = json['metadata'] != null
        ? new Metadata.fromJson(json['metadata'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.record != null) {
      data['record'] = this.record!.map((v) => v.toJson()).toList();
    }
    if (this.metadata != null) {
      data['metadata'] = this.metadata!.toJson();
    }
    return data;
  }
}

class Record {
  String? id;
  String? title;
  String? description;
  double? price;
  String? imageUrl;
  double? rating;
  int? reviews;
  bool? inStock;
  bool? prime;
  String? category;

  Record(
      {this.id,
        this.title,
        this.description,
        this.price,
        this.imageUrl,
        this.rating,
        this.reviews,
        this.inStock,
        this.prime,
        this.category});

  Record.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    price = json['price'];
    imageUrl = json['imageUrl'];
    rating = json['rating'];
    reviews = json['reviews'];
    inStock = json['inStock'];
    prime = json['prime'];
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['price'] = this.price;
    data['imageUrl'] = this.imageUrl;
    data['rating'] = this.rating;
    data['reviews'] = this.reviews;
    data['inStock'] = this.inStock;
    data['prime'] = this.prime;
    data['category'] = this.category;
    return data;
  }
}

class Metadata {
  String? id;
  bool? private;
  String? createdAt;
  String? name;

  Metadata({this.id, this.private, this.createdAt, this.name});

  Metadata.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    private = json['private'];
    createdAt = json['createdAt'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['private'] = this.private;
    data['createdAt'] = this.createdAt;
    data['name'] = this.name;
    return data;
  }
}
