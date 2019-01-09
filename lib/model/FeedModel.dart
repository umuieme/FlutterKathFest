class FeedModel {
  //declaring required variables for feeding into screen (Mock Dummy texts)
  final String name;
  final String description;
  final DateTime publishTime;
  final String image;

  FeedModel(this.name, this.description, this.publishTime, this.image); //Constructor initialsing our instance variables 
//static method lets us access the method without using any object & by using ClassName.staticMethod()
  static List<FeedModel> getDummyData() {     //static method getDummyData which returns a List of FeedModel type
    final groupList = ["Flutter Nepal", "Google Developers Group", "Dubinu"]; //list of group names
    final imageName = ["flutter-nepal.png", "gdg.png", "dubino.png"];   //list of images available in our app
    final description =     //a string of mock description
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip e";
    List<FeedModel> feedList = List<FeedModel>();     //initialising a list of type FeedModel;
    for (var i = 0; i < 20; i++) {                    //looping through 20 times
      feedList.add(FeedModel(groupList[i % 3], description,     //adding items to our feedList,passing values to our constructor
          DateTime.now().subtract(Duration(hours: i * 2)), imageName[i % 3]));  //i % 3 gives values from 0 , 1 and 2 which is required to loop throught our given mock list data
    }
    return feedList;      //as declared above in method, we need to return a list of type FeedModel
  }
}
