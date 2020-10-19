import 'package:ador_chat_application/screens/edit_profile_page.dart';
import 'package:ador_chat_application/screens/subscription_page.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
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
              SizedBox(height: 20),
              Container(
                width: 170.0,
                height: 170.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ9zZkDwWXnN08qdBSVMnXBXq2psJx3lzyOmQ&usqp=CAU",
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'John Wick',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 5),
              FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => EditProfilePage(
                        userProfilePicture:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ9zZkDwWXnN08qdBSVMnXBXq2psJx3lzyOmQ&usqp=CAU",
                      ),
                    ),
                  );
                },
                child: Text(
                  'View & Edit Profile',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 13,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue[100],
                  ),
                  width: double.infinity,
                  height: 470,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            child: Icon(Icons.watch_later),
                          ),
                          SizedBox(width: 5),
                          Text(
                            '60',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Available Minutes',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                      SizedBox(height: 30),
                      ProfilePageFunctionWidget(
                        icon: Icon(
                          Icons.monetization_on,
                          color: Colors.yellow[400],
                        ),
                        text: 'Subscriptions',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  SubscriptionPage(),
                            ),
                          );
                        },
                        otherText: '>',
                      ),
                      ProfilePageFunctionWidget(
                        icon: Icon(
                          Icons.watch_later,
                          color: Colors.red,
                        ),
                        text: 'Buy Minutes',
                        onPressed: () {},
                        otherText: '>',
                      ),
                      ProfilePageFunctionWidget(
                        icon: Icon(
                          Icons.settings,
                          color: Colors.black54,
                        ),
                        text: 'Settings',
                        onPressed: () {},
                        otherText: '>',
                      ),
                      ProfilePageFunctionWidget(
                        icon: Icon(
                          Icons.umbrella,
                          color: Colors.black54,
                        ),
                        text: 'Change to Dark theme',
                        onPressed: () {},
                        otherText: '',
                      ),
                      ProfilePageFunctionWidget(
                        icon: Icon(
                          Icons.logout,
                          color: Colors.black54,
                        ),
                        text: 'Log Out',
                        onPressed: () {},
                        otherText: '',
                      ),
                    ],
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

class ProfilePageFunctionWidget extends StatelessWidget {
  final Icon icon;
  final String text;
  final onPressed;
  final String otherText;

  ProfilePageFunctionWidget(
      {this.icon, this.text, this.onPressed, this.otherText});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                icon,
                SizedBox(width: 20),
                Text(
                  text,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Flexible(
                  child: SizedBox(
                    width: double.infinity,
                  ),
                ),
                Text(
                  otherText,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
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
