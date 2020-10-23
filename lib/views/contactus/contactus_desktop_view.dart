import 'package:flutter/material.dart';
import '../../widgets/nav_bar/navigationBar.dart';
import './contactus_form.dart';
import '../../widgets/footer/footer.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactusDesktopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Image.asset('assets/yoga_logo.png'),
          backgroundColor: Colors.white,
          actions: navBar,
        ),
        body: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                    height: 720,
                    width: 400,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Text(
                            'Contact Details',
                            style: TextStyle(
                                fontWeight: FontWeight.w800, fontSize: 16),
                          ),
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(left: 80),
                        ),
                        Container(
                          child: Text('Email: neha.satyamyoga@gmail.com'),
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(left: 80),
                        ),
                        Container(
                          child: Text('Phone: (+44) 7404339291'),
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(left: 80),
                        ),
                        Container(
                          child: Text('Address: 36 Robindale Avenue, RG6 7JR'),
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(left: 80),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(left: 80),
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
                        
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          height: 240,
                          width: 240,
                          child: Image.asset('assets/yoga_class3.jpg'),
                        ),
                      ],
                    )),
                SizedBox(
                  width: 50,
                ),
                ContactUsForm(),
              ],
            ),
            SizedBox(
              height: 100,
                ),
            Divider(
              thickness: 1,
            ),
            FooterLayout()
          ],
        ));
  }
}
