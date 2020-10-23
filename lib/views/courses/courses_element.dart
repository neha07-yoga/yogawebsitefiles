import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CoursesElements extends StatelessWidget {
  final _navKey;
  CoursesElements(this._navKey);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 1400,
        height: 800,
        decoration: BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.cover,
          //colorFilter: ColorFilter.mode(
              //Colors.black.withOpacity(1.0), BlendMode.modulate),
          image: AssetImage('assets/bluepattern.jpg'),
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Text(
              'GROUP CLASSES @ WATLINGTON HOUSE',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 24),
            ),
            SizedBox(
              height: 10,
            ),
            CourseElementCard(
                'assets/hathaYoga.jpg',
                'Hatha Yoga for Beginners! Now Online!',
                'In beginner\’s yoga we move from gentle asanas to sun salutation in a smooth flow. Look forward to a short meditation, 45 mins of hatha yoga flow, pranayaam (yogic breathing) and relaxation',
                _navKey),
            SizedBox(
              height: 40,
            ),
            CourseElementCard(
                'assets/childYoga.jpg',
                'Yoga for Children',
                'Children\’s yoga we focus on learning asanas, breathing,concentration games and of course relaxing meditation',
                _navKey),
            SizedBox(
              height: 40,
            ),
            CourseElementCard(
                'assets/meditation.jpg',
                'Yoga Nidra & Meditation',
                'Yoga Nidra is like sleep mediation in which body is deeply relaxed while mind stays alert. It is a practice of \‘pratyahara\’ drawing your senses inwards. \‘Kaya-Sthaiyram is a brief meditative practice done after Yoga-Nidra.',
                _navKey),
            SizedBox(
              height: 40,
            ),
          ],
        ));
  }
}

class CourseElementCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final _scrollKey;
  CourseElementCard(
      this.imagePath, this.title, this.description, this._scrollKey);
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 100,
            ),
            Image.asset(imagePath, height: 200, width: 220),
            SizedBox(
              width: 20,
            ),
            Container(
              height: 180,
              width: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 40,
                  ),
                  Text(title,
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 24,
                        color: Color.fromARGB(255, 17, 30, 108),
                      ),
                      textAlign: TextAlign.left),
                  SizedBox(
                    height: 10,
                  ),
                  Text(description,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color.fromARGB(255, 17, 30, 108),
                      )),
                ],
              ),
            ),
            SizedBox(
              width: 160,
            ),
            RaisedButton(
              color: Color.fromARGB(255, 17, 30, 108),
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(18.0),
              ),
              child: Text(
                'Book Now',
                style: TextStyle(fontSize: 16),
              ),
              onPressed: () async {
                await launch("https://app.gymcatch.com/provider/1736/events");
                //Scrollable.ensureVisible(_scrollKey.currentContext);
              },
            )
          ],
        ));
  }
}
