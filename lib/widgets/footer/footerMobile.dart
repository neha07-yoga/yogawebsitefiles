import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterMobileLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.98,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  ' Follow us:',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12
                  ),
                ),
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
                ),                
              ],
            ),
            Row(
              children: <Widget>[
                Text('Created by ',
                      style: TextStyle(fontSize: 12),),
                // Icon(Icons.copyright),
                Text(
                  'TheAppGarage',
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 12),
                ),
                IconButton(
                  icon: Image.asset('assets/tag.png'),
                  onPressed: () {
                    launch('https://www.facebook.com/theAppGrg/');
                  },
                ),
                SizedBox(
                  width: 10,
                )
              ],
            )
          ],
        ));
  }
}
