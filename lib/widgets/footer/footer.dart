import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              '    Follow us on :',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            IconButton(
              icon: Image.asset('assets/facebook.png'),
              //icon: ImageIcon(AssetImage('assets/facebook.png')),
              onPressed: () {
                launch('https://www.facebook.com/HathaYogawithNeha/');
              },
            ),
            IconButton(
              icon: Image.asset('assets/instagram.png'),
              onPressed: () {
                launch('https://www.instagram.com/nehadoorwar/');
              },
            ),
            // IconButton(
            //   icon: ImageIcon(AssetImage('assets/twitter.png')),
            //   onPressed: () {},
            // ),
          ],
        ),
        Row(
          children: <Widget>[
            Text('Designed & Developed by '),
            // Icon(Icons.copyright),
            Text(
                'TheAppGarage',
                style: TextStyle(fontWeight: FontWeight.w800),
              ),
            IconButton(icon: Image.asset('assets/tag.png'),
            onPressed: (){
              launch('https://www.facebook.com/theAppGrg/');
            },),
            SizedBox(
              width: 10,
            )
          ],
        )
      ],
    );
  }
}
