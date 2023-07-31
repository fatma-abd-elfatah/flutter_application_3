class Data {
  final String title;
  final String imageurl;

  Data({
    required this.title,
    required this.imageurl,
  });
}

final List<Data> myData = [
  Data(title: "sport is useful to you", imageurl: "images/sports.png"),
  Data(
    title:
        "Sport is a group of exercises and physical movements that increase physical fitness and maintain the general shape of the body",
    imageurl: "images/heba.png",
  ),
  Data(
    title: "How do I become a sports person?",
    imageurl: "images/question.png",
  )
];
