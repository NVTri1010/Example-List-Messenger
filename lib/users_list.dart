import 'package:flutter/material.dart';
import 'user_model.dart';

double marginAvatarName = 4;
double nameMaxHeight = 35;

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
            child: Stack(
              children: [
                Column(
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
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
                          Positioned.fill(
                            child: CircularProgressIndicator(
                              value: data.hasStory ? 1 : 0,
                            ),
                          ),
                          if (data.active)
                            Positioned.fill(
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: FractionallySizedBox(
                                  heightFactor: 0.5,
                                  widthFactor: 0.5,
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: FractionallySizedBox(
                                      heightFactor: 0.5,
                                      widthFactor: 0.5,
                                      child: Material(
                                        clipBehavior: Clip.hardEdge,
                                        type: MaterialType.circle,
                                        color: Colors.white,
                                        child: Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Material(
                                            clipBehavior: Clip.hardEdge,
                                            type: MaterialType.circle,
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                        ],
                      ),
                    ),
                    SizedBox(height: marginAvatarName), // work like margin
                    SizedBox(height: nameMaxHeight),
                  ],
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      height: nameMaxHeight,
                      child: Text(
                        data.name,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                      ),
                    ),
                  ),
                ),
              ],
            ),
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
