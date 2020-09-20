import 'package:flutter/material.dart';
import 'user_model.dart';

class UserItemWidget extends StatelessWidget {
  final UserModel data;

  UserItemWidget({this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: Material(
                clipBehavior: Clip.hardEdge,
                type: MaterialType.circle,
                color: Colors.transparent,
                child: Ink.image(
                  fit: BoxFit.cover,
                  image: NetworkImage(data.img),
                ),
              ),
            ),
          ),
          Text(
            data.name,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          )
        ],
      ),
    );
  }
}

class UsersListWidget extends StatelessWidget {
  final List<UserModel> data;

  UsersListWidget({this.data});

  @override
  Widget build(BuildContext context) {
    List<Widget> listWidgets = data.map((item) {
      return UserItemWidget(data: item);
    }).toList();

    return ListView(
      scrollDirection: Axis.horizontal,
      children: listWidgets,
    );
  }
}
