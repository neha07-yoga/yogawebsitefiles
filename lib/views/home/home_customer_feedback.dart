import 'package:flutter/material.dart';

class CustomerFeedback extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1400,
      height: 400,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'WHAT OUR CUSTOMERS SAY',
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 24),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CustomerFeedbackCard(
                  'assets/client1.jpg',
                  '\"I love the short meditation and deep relaxation at the end of the yoga session,it makes me feel rejuvenated\"',
                  'Shreya'),
              SizedBox(
                width: 50,
              ),
              CustomerFeedbackCard(
                  'assets/client2.jpg',
                  '\"Yoga session with Neha allows me to relax also focus and be active\"',
                  'Leena Bindra'),
              SizedBox(
                width: 50,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CustomerFeedbackCard extends StatelessWidget {
  final String imagePath;
  final String comments;
  final String customerName;
  CustomerFeedbackCard(this.imagePath, this.comments, this.customerName);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: <Widget>[
        Image.asset(imagePath, height: 150, width: 150),
        SizedBox(
          width: 20,
        ),
        Container(
          height: 100,
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(comments, textAlign: TextAlign.justify),
              SizedBox(
                height: 10,
              ),
              Text(customerName,
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16)),
            ],
          ),
        )
      ],
    ));
  }
}
