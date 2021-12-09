// import 'dart:ffi';
import 'package:chaty_app/theme.dart';
import 'package:chaty_app/widgets/chat_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: blueColor,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color(0xff29CB9E),
          child: Icon(
            Icons.add,
            size: 28,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: SafeArea(
            child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Image.asset(
                  'assets/images/profile.png',
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Sabrina Carpenter',
                  style: TextStyle(fontSize: 20, color: whiteColor),
                ),
                Text(
                  'Freelance Writter',
                  style: TextStyle(color: lightBlue, fontSize: 16),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(40)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Friends', style: textTitle),
                      SizedBox(
                        height: 16,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/friend_1.png',
                        name: 'Eko Purnomo',
                        text: 'Apa kabar brader',
                        time: 'Now',
                        unread: true,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/friend_2.png',
                        name: 'Aisyah',
                        text: 'Apa kabar brader',
                        time: 'Now',
                        unread: false,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Groups',
                        style: textTitle,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group1.png',
                        name: 'Jakarta Fair',
                        text: 'Here we go..',
                        time: 'Today',
                        unread: false,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group2.png',
                        name: 'Angular',
                        text: 'Here we go..',
                        time: 'Today',
                        unread: false,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group3.png',
                        name: 'Bootstrap',
                        text: 'Here we go..',
                        time: 'Today',
                        unread: false,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )));
  }
}
