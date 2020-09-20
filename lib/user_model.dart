class UserModel extends Object {
  int id;
  String img;
  String name;
  bool active;
  bool hasStory;

  UserModel(
      {this.id,
      this.img,
      this.name,
      this.active = false,
      this.hasStory = false});
}
