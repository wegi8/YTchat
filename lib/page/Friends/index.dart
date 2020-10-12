import 'package:flutter/material.dart';
import 'package:flutterdemo/components/AppBar/index.dart';
import 'package:flutterdemo/components/FriendType/index.dart';
import 'package:flutterdemo/components/Search/index.dart';
import 'package:flutterdemo/components/UserHead/UserInfo.dart';

class FriendsPage extends StatefulWidget {
  FriendsPage({Key key}) : super(key: key);

  @override
  _FriendsPageState createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        centerTitle: true,
        title: "联系人",
        leadingWidget: UserInfo.userHead,
        trailingWidget: Container(
            width: 30,
            height: 30,
            child: IconButton(
                padding: EdgeInsets.zero,
                icon: Icon(Icons.add),
                onPressed: UserInfo.addFriend)),
      ),
      drawer: UserInfo.drawer,
      body: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(children: [
            Container(child: Search()),
            FriendTypes(),
          ])),
    );
  }
}
