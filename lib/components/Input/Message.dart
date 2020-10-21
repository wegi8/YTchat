import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessageInput extends StatefulWidget {
  MessageInput({Key key}) : super(key: key);

  @override
  _MessageInputState createState() => _MessageInputState();
}

class _MessageInputState extends State<MessageInput> {
  static const InputDecoration messageInputClass = InputDecoration(
    filled: true,
    isDense: true,
    fillColor: Colors.white,
    hintStyle: TextStyle(fontSize: 14.0),
    contentPadding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.all(Radius.circular(50)),
    ),
  );

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 15.w),
      decoration: BoxDecoration(color: Colors.grey[200]),
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: TextField(
                controller: _controller,
                decoration: messageInputClass,
                maxLines: null,
                keyboardType: TextInputType.multiline,
              ),
            ),
          ),
          SizedBox(width: 20.w),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {
              _controller.clear();
              BotToast.showText(text: "消息发送成功");
            },
          ),
          IconButton(
            icon: Icon(Icons.add_circle_outline),
            onPressed: () {
              BotToast.showText(text: "暂未开放,敬请期待");
            },
          )
        ],
      ),
    );
  }
}