import 'package:flutter/material.dart';

class AboutMobileTopLayout extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
                  width: MediaQuery.of(context).size.width,
                  height: 400,
                  decoration: BoxDecoration(image:
                                  DecorationImage(
                                      fit: BoxFit.cover,
                                      //colorFilter: ColorFilter.mode(Colors.black.withOpacity(1.0), BlendMode.modulate),
                                      image: AssetImage('assets/lotusbloom.jpg'),)
                                    ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        SizedBox(height: 40,),
                        Container(
                          width: MediaQuery.of(context).size.width*0.8,
                          child: Text('\“Yoga is not an ancient myth buried in oblivion.It is the most valuable inheritance of the present.It is essential need of today and the culture of tomorrow.\”',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              // color: Color.fromARGB(255, 17, 30, 108),
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 16
                            ),                  
                        ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          width: MediaQuery.of(context).size.width*0.8,
                          child: Text(' -- Swami Satyananda Saraswati',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 16
                            ),                  
                        ),
                        ),
                        SizedBox(
                          height: 40,
                        )
                      ],
                    )
                  ),                                      
              );
  }
}



