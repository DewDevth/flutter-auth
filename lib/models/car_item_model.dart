class CarItem {
  String id;
  String title;
  String detail;
  String size;
  bool isActive;
  String createdAt;
  String updatedAt;
  int v;
  String image;

  CarItem({
    required this.id,
    required this.title,
    required this.detail,
    required this.size,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
    required this.image,
  });

  factory CarItem.fromJson(Map<String, dynamic> json) {
    return CarItem(
      id: json['_id'],
      title: json['title'],
      detail: json['detail'],
      size: json['size'],
      isActive: json['isActive'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
      v: json['__v'],
      image: json['image'],
    );
  }
}
