import 'package:ador_chat_application/widgets/rounded_button_widget.dart';
import 'package:flutter/material.dart';

class SubscriptionPage extends StatefulWidget {
  @override
  _SubscriptionPageState createState() => _SubscriptionPageState();
}

class _SubscriptionPageState extends State<SubscriptionPage> {
  int subscriptionNumberSelected = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                  Flexible(child: SizedBox(width: double.infinity)),
                  Text(
                    'Subscriptions',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Flexible(child: SizedBox(width: double.infinity)),
                  Flexible(child: SizedBox(width: double.infinity)),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  RoundedButtonWidget(
                    text: 'Standard',
                    textStyle: TextStyle(
                      fontSize: 8,
                      color: subscriptionNumberSelected == 1
                          ? Colors.white
                          : Colors.black,
                    ),
                    backgroundColor: subscriptionNumberSelected == 1
                        ? Colors.blue
                        : Colors.white,
                    onPressed: () {
                      setState(() {
                        subscriptionNumberSelected = 1;
                      });
                    },
                    borderColor: subscriptionNumberSelected == 1
                        ? Colors.blue
                        : Colors.black,
                    borderRadius: 10.0,
                    height: 30.0,
                  ),
                  RoundedButtonWidget(
                    text: 'Premium',
                    textStyle: TextStyle(
                      fontSize: 8,
                      color: subscriptionNumberSelected == 2
                          ? Colors.white
                          : Colors.black,
                    ),
                    backgroundColor: subscriptionNumberSelected == 2
                        ? Colors.blue
                        : Colors.white,
                    onPressed: () {
                      setState(() {
                        subscriptionNumberSelected = 2;
                      });
                    },
                    borderColor: subscriptionNumberSelected == 2
                        ? Colors.blue
                        : Colors.black,
                    borderRadius: 10.0,
                    height: 30.0,
                  ),
                  RoundedButtonWidget(
                    text: 'Streamium',
                    textStyle: TextStyle(
                      fontSize: 8,
                      color: subscriptionNumberSelected == 3
                          ? Colors.white
                          : Colors.black,
                    ),
                    backgroundColor: subscriptionNumberSelected == 3
                        ? Colors.blue
                        : Colors.white,
                    onPressed: () {
                      setState(() {
                        subscriptionNumberSelected = 3;
                      });
                    },
                    borderColor: subscriptionNumberSelected == 3
                        ? Colors.blue
                        : Colors.black,
                    borderRadius: 10.0,
                    height: 30.0,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
