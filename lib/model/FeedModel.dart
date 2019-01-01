class FeedModel {
  final String name;
  final String description;
  final DateTime publishTime;
  final String image;

  FeedModel(this.name, this.description, this.publishTime, this.image);

  static List<FeedModel> getDummyData() {
    final groupList = ["Flutter Nepal", "Google Developers Group", "Dubinu"];
    final imageName = ["flutter-nepal.png", "gdg.png", "dubino.png"];
    final description =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip e";
    List<FeedModel> feedList = List<FeedModel>();
    for (var i = 0; i < 20; i++) {
      feedList.add(FeedModel(groupList[i % 3], description,
          DateTime.now().subtract(Duration(hours: i * 2)), imageName[i % 3]));
    }
    return feedList;
  }
}
