class UserModel extends Object {
  int id;
  String img;
  String name;
  bool active = false;
  bool hasStory = false;

  UserModel({this.id, this.img, this.name, this.active, this.hasStory});
}
