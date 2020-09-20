import 'package:list_item_demo/user_model.dart';

var tmpId = 1;
const mockImages = [
  'https://www.w3schools.com/howto/img_avatar.png',
  'https://www.w3schools.com/howto/img_avatar2.png',
  'https://www.w3schools.com/w3images/avatar2.png',
  'https://www.w3schools.com/w3images/avatar5.png',
  'https://www.w3schools.com/w3images/avatar6.png'
];

List<UserModel> mockUsers = [
  UserModel(
    id: tmpId++,
    img: mockImages[tmpId % mockImages.length],
    active: true,
    name: 'Person with very very very very long name',
    hasStory: true,
  ),
  UserModel(
    id: tmpId++,
    img: mockImages[tmpId % mockImages.length],
    active: true,
    name: 'Person 2',
  ),
  UserModel(
    id: tmpId++,
    img: mockImages[tmpId % mockImages.length],
    name: 'Person 3',
  ),
  UserModel(
    id: tmpId++,
    img: mockImages[tmpId % mockImages.length],
    name: 'Person 4',
  ),
  UserModel(
    id: tmpId++,
    img: mockImages[tmpId % mockImages.length],
    name: 'Person 5',
  ),
];
