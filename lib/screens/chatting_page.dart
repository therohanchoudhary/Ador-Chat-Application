import 'package:ador_chat_application/classes/chat_messages_class.dart';
import 'package:ador_chat_application/widgets/message_bubble_widget.dart';
import 'package:flutter/material.dart';

class ChattingPage extends StatefulWidget {
  final String deviceUser;
  final String otherUser;
  final String otherUserImage;

  ChattingPage({this.deviceUser, this.otherUser, this.otherUserImage});

  @override
  _ChattingPageState createState() => _ChattingPageState();
}

class _ChattingPageState extends State<ChattingPage> {
  @override
  Widget build(BuildContext context) {
    List<ChatMessages> chatMessagesList = [
      ChatMessages(
          sender: widget.otherUser,
          receiver: widget.deviceUser,
          message: 'Hi, how are you'),
      ChatMessages(
          sender: widget.deviceUser,
          receiver: widget.otherUser,
          message: 'Hi, I am fine'),
      ChatMessages(
          sender: widget.otherUser,
          receiver: widget.deviceUser,
          message: 'Neewbf fdwuib fwbudi dbwfiu'),
      ChatMessages(
          sender: widget.otherUser,
          receiver: widget.deviceUser,
          message: 'idsjb fwiub fbdiwb dbfwi dbifwb vefigb vbibvifeb'),
      ChatMessages(
          sender: widget.deviceUser,
          receiver: widget.otherUser,
          message: 'Ibfhw bfhjbrg bebg biwe dwbvfh'),
      ChatMessages(
          sender: widget.otherUser,
          receiver: widget.deviceUser,
          message: 'I fbhs fwib dbqib fbievb'),
      ChatMessages(
          sender: widget.deviceUser,
          receiver: widget.otherUser,
          message:
              'Ifd fwibub rbrieb dbiuqbed frhfbirf jbfiwbf rhbfibew uwfibfrif rej ferbfiunqed'),
      ChatMessages(
          sender: widget.otherUser,
          receiver: widget.deviceUser,
          message: 'I bfdu bfdwi bdsyuv wqvyuev dsyu'),
      ChatMessages(
          sender: widget.deviceUser,
          receiver: widget.otherUser,
          message: 'Hiuf dfib uvfas duyfd us fuyfvau'),
      ChatMessages(
          sender: widget.deviceUser,
          receiver: widget.otherUser,
          message: 'Hfdua fdbywdifbw wudfufvu freug ru'),
    ];

    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(Icons.arrow_back),
                ),
                Container(
                  width: 35.0,
                  height: 35.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(widget.otherUserImage),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    Text(
                      widget.otherUser,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      'Online',
                      style: TextStyle(fontSize: 10),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ],
            ),
            Flexible(
              child: ListView.builder(
                itemCount: chatMessagesList.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  Color colorContainer;
                  Color textColor;
                  var alignmentContainer;

                  if (chatMessagesList[index].sender == widget.deviceUser) {
                    colorContainer = Colors.blue;
                    textColor = Colors.white;
                    alignmentContainer = Alignment.topRight;
                  } else {
                    colorContainer = Colors.blue[100];
                    textColor = Colors.black;
                    alignmentContainer = Alignment.topLeft;
                  }
                  return chatMessagesList[index].sender == widget.otherUser
                      ? Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Container(
                                width: 30.0,
                                height: 30.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(widget.otherUserImage),
                                  ),
                                ),
                              ),
                            ),
                            MessageBubbleWidget(
                              alignmentContainer: alignmentContainer,
                              textColor: textColor,
                              colorContainer: colorContainer,
                              message: chatMessagesList[index].message,
                            ),
                          ],
                        )
                      : MessageBubbleWidget(
                          alignmentContainer: alignmentContainer,
                          textColor: textColor,
                          colorContainer: colorContainer,
                          message: chatMessagesList[index].message,
                        );
                },
              ),
            ),
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
          ],
        ),
      ),
    );
  }
}
