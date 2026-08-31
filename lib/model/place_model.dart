class PlaceModel {
  String name;
  String location;
  String image;
  String description;
  double rating;
  PlaceModel({
    required this.name,
    required this.image,
    required this.description,
    required this.location,
    required this.rating,
  });

  factory PlaceModel.fromJson(Map<String, dynamic> json) {
    return PlaceModel(
      name: json['name'],
      image: json['image'],
      description: json['description'],
      location: json['location'],
      rating: json['rating'],
    );
  }
}
