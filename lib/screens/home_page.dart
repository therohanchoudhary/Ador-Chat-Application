import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  RangeValues _currentRangeValues = RangeValues(18, 60);

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
                      padding: EdgeInsets.only(left: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Age",
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                    RangeSlider(
                      values: _currentRangeValues,
                      min: 18.0,
                      max: 60.0,
                      divisions: 42,
                      labels: RangeLabels(
                        _currentRangeValues.start.round().toString(),
                        _currentRangeValues.end.round().toString(),
                      ),
                      onChanged: (RangeValues values) {
                        setState(() {
                          _currentRangeValues = values;
                        });
                      },
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 16,
                        right: 16,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('18'),
                          Text('60'),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Gender",
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 30,
                            width: 80,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.blue),
                              ),
                              onPressed: () {},
                              color: Colors.white,
                              textColor: Colors.black,
                              child: Text(
                                "Male",
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 80,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.blue),
                              ),
                              onPressed: () {},
                              color: Colors.white,
                              textColor: Colors.black,
                              child: Text(
                                "Female",
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 80,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.blue),
                              ),
                              onPressed: () {},
                              color: Colors.white,
                              textColor: Colors.black,
                              child: Text(
                                "Other",
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
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
                        Flexible(child: SizedBox(width: 29)),
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
                    )
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
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(child: SizedBox(width: double.maxFinite)),
                      Text(
                        'Welcome',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      Flexible(child: SizedBox(width: double.maxFinite)),
                      IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () {
                          dialog(context);
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Image.asset('assets/woman2.png'),
                ),
                Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Text(
                    'Want to find someone to chat with?',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 18,
                    right: 18,
                    bottom: 18,
                  ),
                  child: Container(
                    height: 55,
                    width: double.infinity,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28.0),
                      ),
                      onPressed: () {
                        dialog(context);
                      },
                      color: Colors.blue,
                      textColor: Colors.white,
                      child: Text(
                        "Start Searching",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
