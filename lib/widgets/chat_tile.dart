import 'package:flutter/material.dart';
import 'package:chaty_app/theme.dart';

class ChatTile extends StatelessWidget {
  final imageUrl;
  final name;
  final text;
  final time;
  final unread;

  ChatTile({this.imageUrl, this.name, this.text, this.time, this.unread});

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            width: 55,
            height: 55,
          ),
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: textTitle,
              ),
              Text(
                text,
                style: unread ? subtitle.copyWith(color: blackColor) : subtitle,
              )
            ],
          ),
          Spacer(),
          Text(
            time,
            style: subtitle,
          )
        ],
      ),
    );
  }
}
