import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:github/routes/routes.dart';
import 'package:github/utils/application.dart';

class AvatarItem extends StatelessWidget {
  final String avatarUrl;
  final String title;
  final String description;
  final Function onTap;
  final bool hasArrow;

  const AvatarItem({
    Key key,
    @required this.title,
    @required this.avatarUrl,
    this.description: '',
    this.onTap,
    this.hasArrow: true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
      decoration: new BoxDecoration(
          color: Colors.white,
          border: Border(bottom: BorderSide(color: Colors.grey[300]))),
      child: new ListTile(
        title: Text(title),
        subtitle: Text(
          description,
          style: TextStyle(fontSize: 12.0, color: Colors.grey[700]),
        ),
        leading: CircleAvatar(
          backgroundImage: NetworkImage(avatarUrl),
          radius: 30.0,
        ),
        trailing: hasArrow == true
            ? Icon(
                Icons.keyboard_arrow_right,
              )
            : null,
        onTap: onTap,
      ),
    );
  }
}
