class DataModel {
  final String name;
  final String img;
  final int price;
  final int people;
  final int starts;
  final String discription;
  final String location;
  DataModel(
      {required this.name,
      required this.img,
      required this.price,
      required this.people,
      required this.starts,
      required this.discription,
      required this.location});

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
        name: json["name"],
        img: json["img"],
        price: json["price"],
        people: json["people"],
        starts: json["stars"],
        discription: json["description"],
        location: json["location"]);
  }
}
