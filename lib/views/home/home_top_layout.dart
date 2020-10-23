import 'package:flutter/material.dart';

class HomeTopLayout extends StatelessWidget {
  final _navKey;
  HomeTopLayout(this._navKey);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 600,
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        //colorFilter:
           // ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.modulate),
        image: AssetImage('assets/yoga_class1.jpg'),
      )),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          SizedBox(),
          Container(
            width: 600,
            child: Text(
              'It\'s time to be Yoga Fit',
              textAlign: TextAlign.center,
              style: TextStyle(
                  // color: Color.fromARGB(255, 17, 30, 108),
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 48),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 600,
            child: Text(
              'Come along and experience goodness of Yoga in a traditional and simple way!',
              textAlign: TextAlign.center,
              style: TextStyle(
                  // color: Color.fromARGB(255, 17, 30, 108),
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 24),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          RaisedButton(
            color: Color.fromARGB(255, 17, 30, 108),
            textColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(18.0),
            ),
            child: Text(
              ' Know More about our Classes ',
              style: TextStyle(fontSize: 16),
            ),
            onPressed: () {
              Scrollable.ensureVisible(_navKey.currentContext);
              // Navigator.pushNamed(context, '/courses');
            },
          ),
          SizedBox(
            height: 60,
          )
        ],
      )),
    );
  }
}
