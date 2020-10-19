import 'package:ador_chat_application/classes/message_list_class.dart';
import 'package:ador_chat_application/screens/chatting_page.dart';
import 'package:ador_chat_application/screens/video_history_page.dart';
import 'package:flutter/material.dart';

class MessageListPage extends StatefulWidget {
  @override
  _MessageListPageState createState() => _MessageListPageState();
}

class _MessageListPageState extends State<MessageListPage> {
  List<MessageList> messageList = [
    MessageList(
        name: 'Rob Van Dam',
        about: 'Njfdsj fdnjs hfdusb fdsuh.',
        like: false,
        image:
            'https://cache.wizardworld.com/files/guests/_350x350_crop_center-center_100/Website-Headshot-350x350-Rob-Van-Dam-1.jpg'),
    MessageList(
        name: 'CM Punk',
        about: 'Uifwfij febhivb vhfbwh',
        like: false,
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcShM5EieV_Hv1Z4Sun3PfGTCDZPSAxXuIVaXg&usqp=CAU'),
    MessageList(
        name: 'Goldberg',
        about: 'Njfdsj fdnjs hfdusb fdsuh.',
        like: false,
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSm9wTAbQVAZcpbGHqNZaaAFgCqvRp5JxyYVQ&usqp=CAU'),
    MessageList(
        name: 'John Cena',
        about: 'Njfdsj fdnjs hfdusb fdsuh.',
        like: false,
        image:
            'https://i.pinimg.com/originals/c3/41/ca/c341ca2e4f0cc33e5d9529bd32ea53f3.jpg'),
  ];

  dialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder:
              (BuildContext context, void Function(void Function()) setState) {
            return Dialog(
              child: Container(
                width: double.infinity,
                height: 330,
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Text(
                      "Filter",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 30,
                            width: 100,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.blue),
                              ),
                              onPressed: () {},
                              color: Colors.blue,
                              textColor: Colors.white,
                              child: Text(
                                "ALL FRIENDS",
                                style: TextStyle(fontSize: 8),
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          Container(
                            height: 30,
                            width: 100,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.blue),
                              ),
                              onPressed: () {},
                              color: Colors.white,
                              textColor: Colors.black,
                              child: Text(
                                "RECENT",
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 30,
                            width: 100,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.blue),
                              ),
                              onPressed: () {},
                              color: Colors.white,
                              textColor: Colors.black,
                              child: Text(
                                "ONLINE",
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          Container(
                            height: 30,
                            width: 100,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.blue),
                              ),
                              onPressed: () {},
                              color: Colors.white,
                              textColor: Colors.black,
                              child: Text(
                                "FAVORITES",
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    FlatButton(
                      onPressed: () {},
                      child: Container(
                        height: 30,
                        width: 100,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.blue),
                          ),
                          onPressed: () {},
                          color: Colors.white,
                          textColor: Colors.black,
                          child: Text(
                            "UNREAD",
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlatButton(
                          onPressed: () {},
                          child: Container(
                            height: 30,
                            width: 100,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.lightBlueAccent),
                              ),
                              onPressed: () {},
                              color: Colors.lightBlueAccent,
                              textColor: Colors.white,
                              child: Text(
                                "Back",
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {},
                          child: Container(
                            height: 30,
                            width: 100,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.greenAccent),
                              ),
                              onPressed: () {},
                              color: Colors.greenAccent,
                              textColor: Colors.white,
                              child: Text(
                                "Apply",
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: SizedBox(width: double.infinity),
                  ),
                  Flexible(
                    child: SizedBox(width: double.infinity),
                  ),
                  Text(
                    'Messages',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  ),
                  Flexible(
                    child: SizedBox(width: double.infinity),
                  ),
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      dialog(context);
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),
              FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => VideoHistoryPage(),
                    ),
                  );
                },
                child: Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.yellow[100],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.video_call),
                        Text(
                          'Video History',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '>',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ListView.builder(
                itemCount: messageList.length,
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => ChattingPage(
                            deviceUser: 'Current User',
                            otherUser: messageList[index].name,
                            otherUserImage: messageList[index].image,
                          ),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.yellow[100],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 55.0,
                                    height: 55.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: NetworkImage(
                                          messageList[index].image,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        messageList[index].name,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      Text(
                                        messageList[index].about,
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ],
                                  ),
                                  messageList[index].like == true
                                      ? Icon(
                                          Icons.favorite,
                                          color: Colors.black87,
                                        )
                                      : Icon(
                                          Icons.favorite_border,
                                          color: Colors.black87,
                                        ),
                                ],
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.blue, width: 0.0),
                            borderRadius: BorderRadius.all(
                              Radius.circular(40.0),
                            ),
                          ),

                          filled: true,
                          hintStyle: TextStyle(color: Colors.blue[400]),
                          hintText: "Say something...",
                          fillColor: Colors.white70,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
