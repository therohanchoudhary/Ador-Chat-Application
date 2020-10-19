import 'package:ador_chat_application/classes/video_list_class.dart';
import 'package:flutter/material.dart';

class VideoHistoryPage extends StatefulWidget {
  @override
  _VideoHistoryPageState createState() => _VideoHistoryPageState();
}

class _VideoHistoryPageState extends State<VideoHistoryPage> {
  List<VideoList> videoList = [
    VideoList(
      name: 'John Wick',
      about: 'Usnaf fuinfd hfuiahf fsdiu',
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ9zZkDwWXnN08qdBSVMnXBXq2psJx3lzyOmQ&usqp=CAU',
    ),
    VideoList(
      name: 'John Wick',
      about: 'Usnaf fuinfd hfuiahf fsdiu',
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ9zZkDwWXnN08qdBSVMnXBXq2psJx3lzyOmQ&usqp=CAU',
    ),
    VideoList(
      name: 'John Wick',
      about: 'Usnaf fuinfd hfuiahf fsdiu',
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ9zZkDwWXnN08qdBSVMnXBXq2psJx3lzyOmQ&usqp=CAU',
    ),
    VideoList(
      name: 'John Wick',
      about: 'Usnaf fuinfd hfuiahf fsdiu',
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ9zZkDwWXnN08qdBSVMnXBXq2psJx3lzyOmQ&usqp=CAU',
    ),
    VideoList(
      name: 'John Wick',
      about: 'Usnaf fuinfd hfuiahf fsdiu',
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ9zZkDwWXnN08qdBSVMnXBXq2psJx3lzyOmQ&usqp=CAU',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8.0,
                    bottom: 8.0,
                    right: 8.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FlatButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(Icons.arrow_back),
                      ),
                      Flexible(
                        child: SizedBox(width: double.infinity),
                      ),
                      Text(
                        'Video History',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Flexible(
                        child: SizedBox(width: double.infinity),
                      ),
                      Flexible(
                        child: SizedBox(width: double.infinity),
                      ),
                    ],
                  ),
                ),
                ListView.builder(
                  itemCount: videoList.length,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.yellow[100],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Column(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          width: 50.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: NetworkImage(
                                                  videoList[index].image),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 8),
                                        Text(
                                          videoList[index].name,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17,
                                          ),
                                        ),
                                        Text(
                                          videoList[index].about,
                                          style: TextStyle(
                                            fontSize: 8,
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        FlatButton(
                                          onPressed: () {},
                                          child: Container(
                                            height: 35,
                                            width: 200,
                                            child: RaisedButton(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(18.0),
                                                side: BorderSide(
                                                    color: Colors.blue),
                                              ),
                                              onPressed: () {},
                                              color: Colors.blue,
                                              textColor: Colors.white,
                                              child: Text(
                                                "Add",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                    ),
                                  ],
                                ),
                              ),
                              height: 182,
                              width: 150,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.yellow[100],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Column(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          width: 50.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: NetworkImage(
                                                  videoList[index].image),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 8),
                                        Text(
                                          videoList[index].name,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17,
                                          ),
                                        ),
                                        Text(
                                          videoList[index].about,
                                          style: TextStyle(
                                            fontSize: 8,
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        FlatButton(
                                          onPressed: () {},
                                          child: Container(
                                            height: 35,
                                            width: 200,
                                            child: RaisedButton(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(18.0),
                                                side: BorderSide(
                                                    color: Colors.blue),
                                              ),
                                              onPressed: () {},
                                              color: Colors.blue,
                                              textColor: Colors.white,
                                              child: Text(
                                                "Add",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                    ),
                                  ],
                                ),
                              ),
                              height: 182,
                              width: 150,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                SizedBox(height: 20),
                FlatButton(
                  onPressed: () {},
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.blue),
                      ),
                      onPressed: () {},
                      color: Colors.blue,
                      textColor: Colors.white,
                      child: Text(
                        "More",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
