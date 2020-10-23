import 'package:flutter/material.dart';

class MobileCustomerFeedback extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromARGB(255, 17, 30, 108),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Text(
              'WHAT OUR CUSTOMERS SAY',
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 24,
                  color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            CustomerFeedbackCard(
                'assets/client1.jpg',
                '\"I love the short meditation and deep relaxation at the end of the yoga session,it makes me feel rejuvenated\"',
                'Shreya'),
            SizedBox(
              height: 20,
            ),
            CustomerFeedbackCard(
                'assets/client2.jpg',
                '\"Yoga session with Neha allows me to relax also focus and be active\"',
                'Leena Bindra'),
            SizedBox(
              height: 20,
            ),
          ],
        ));
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
        SizedBox(
          width: 20,
        ),
        Image.asset(imagePath, height: MediaQuery.of(context).size.width*0.3, width: MediaQuery.of(context).size.width*0.3),
        SizedBox(
          width: 20,
        ),
        Container(
          height: 120,
          width: MediaQuery.of(context).size.width*0.55,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(comments, textAlign: TextAlign.justify,style: TextStyle(fontSize:14, color: Colors.white),),
              SizedBox(
                height: 10,
              ),
              Text(customerName,
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16,color: Colors.white)),
            ],
          ),
        )
      ],
    ));
  }
}
