import 'package:flutter/material.dart';

class HomeCenterLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 600,
        decoration: BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.1), BlendMode.dstATop),
          image: AssetImage('assets/yoga_class2.jpg'),
        )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
                width: 400,
                height: 600,
                child: _Centercolumn(
                    'Group Sessions',
                    '60/90 min sessions starting with a short meditation and followed by asanas, pranayaam and relaxation',
                    'assets/groupYoga.jpg',
                    ' Know More ',
                    '/courses')),
            Container(
                width: 400,
                height: 600,
                child: _Centercolumn(
                    'Private Sessions',
                    'Individual Sessions and coaching tailored according to your needs',
                    'assets/privateYoga.jpg',
                    ' Get in touch ',
                    '/contactus')),
            Container(
                width: 400,
                height: 600,
                child: _Centercolumn(
                    'Corporate Sessions',
                    'Sponsor yoga and meditation sessions at your workplace',
                    'assets/corporateYoga.jpg',
                    ' Get in touch ',
                    '/contactus')),
          ],
        ));
  }
}

class _Centercolumn extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;
  final String buttonText;
  // final Widget navWidget;
  final String navRoute;
  _Centercolumn(this.title, this.description, this.imagePath, this.buttonText,
      this.navRoute);
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 240,
          ),
          Image.asset(
            imagePath,
            height: 140,
            width: 140,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: 24,
                color: Color.fromARGB(255, 17, 30, 108),
                // color: Colors.white,
                fontWeight: FontWeight.w800),
            textAlign: TextAlign.center,
          ),
          Text(
            description,
            style: TextStyle(
                fontSize: 16,
                // color: Colors.white,
                color: Color.fromARGB(255, 17, 30, 108)),
            textAlign: TextAlign.center,
          ),
          RaisedButton(
            color: Color.fromARGB(255, 17, 30, 108),
            textColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(18.0),
            ),
            child: Text(
              buttonText,
              style: TextStyle(fontSize: 16),
            ),
            onPressed: () {
              Navigator.pushNamed(context, navRoute);
              // Navigator.pushNamed(context, navRoute);
            },
          ),
          SizedBox(
            height: 80,
          )
        ]);
  }
}
