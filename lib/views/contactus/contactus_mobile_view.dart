import 'package:flutter/material.dart';
// import './contactus_form.dart';
import '../courses/courses_signup_form.dart';
import '../../widgets/footer/footerMobile.dart';
import '../../widgets/nav_bar/sideDrawerPanel.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactusMobileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Color.fromARGB(255, 17, 30, 108)),
        actions: <Widget>[
          SizedBox(
            height: 40,
            width: 40,
            child: Image.asset('assets/yoga_logo.png'),
          )
        ],
      ),
      drawer: SideDrawerPanel(),
      body: ListView(
        children: <Widget>[
          Container(
              // height: 720,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(width: 20),
                      Image.asset('assets/yoga_class3.jpg',                        
                        height: MediaQuery.of(context).size.width*0.25,
                        width: MediaQuery.of(context).size.width*0.25,),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text(
                              'Contact Details',
                              style: TextStyle(
                                  fontWeight: FontWeight.w800, fontSize: 16),
                            ),
                            alignment: Alignment.topLeft,
                          ),
                          Container(
                            child: Text('Email: neha.satyamyoga@gmail.com',style: TextStyle(fontSize: 14),),
                            alignment: Alignment.topLeft,
                          ),
                          Container(
                            child: Text('Phone: (+44) 7404339291',style: TextStyle(fontSize: 14)),
                            alignment: Alignment.topLeft,
                          ),
                          Container(
                            child:
                                Text('Address: 36 Robindale Avenue, RG6 7JR',style: TextStyle(fontSize: 14)),
                            alignment: Alignment.topLeft,
                          ),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Row(
                          children: <Widget>[
                            Text('Join us on: '),
                            IconButton(
                              icon: Image.asset('assets/facebook.png'),
                              onPressed: () {
                                  launch('https://www.facebook.com/HathaYogawithNeha/');
                                    },
                                  ),
                             IconButton(
                                icon: Image.asset('assets/instagram.png'),
                                onPressed: () {
                                  launch('https://www.instagram.com/nehadoorwar/');
                                   },
                              )
                          ],
                        ),
                        ),
                        ],
                      )
                    ],
                  ),
                ],
              )),
          SizedBox(height: 50,),
          CoursesSignUpForm(),
          Divider(
            thickness: 1,
          ),
          FooterMobileLayout(),
        ],
      ),
    );
  }
}
