import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  final String userProfilePicture;

  EditProfilePage({this.userProfilePicture});

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8.0,
                  bottom: 8.0,
                  right: 8.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'My Profile',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    width: 240.0,
                    height: 240.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(widget.userProfilePicture),
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Icon(
                        Icons.camera_alt,
                        size: 40,
                      ),
                      height: 60,
                      width: 60,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 60),
              Padding(
                padding: const EdgeInsets.only(left: 28.0, right: 28.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'User Name',
                    hintStyle: TextStyle(fontSize: 12),
                  ),
                  keyboardType: TextInputType.text,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28.0, right: 28.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'E-mail ID',
                    hintStyle: TextStyle(fontSize: 12),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28.0, right: 28.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Age',
                    hintStyle: TextStyle(fontSize: 12),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              SizedBox(height: 50),
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
                      "Save",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
