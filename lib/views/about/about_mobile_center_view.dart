import 'package:flutter/material.dart';

class AboutMobileCenterLayout extends StatelessWidget{
 @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: <Widget>[
                Container(width: MediaQuery.of(context).size.width*0.8,
                          child: Text('\“Yoga is the integration and harmony between thoughts, feeling and deed or intergration between head, heart and hand\” --Swami Sivananda Saraswati',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w800
                                      ),
                          textAlign: TextAlign.center,
                          )
                          ,),
          Container(
            width: MediaQuery.of(context).size.width*0.8,
            child: Text('\nI was introduced to yoga as a child and again as a teenager, brief as this exposure was it still gave me a lot of relief in terms of mood swings,sibling jealousy, peer pressure and of course migraine. But, yoga was forgotten in adulthood as I immersed myself into the pleasures of married life, until motherhood came. Once again yoga came to the rescue and helped me connect to myself and the outer chaotic world. It was somewhere coming to me as a realization that I connect to yoga and I should be more serious about it. But I had no time or peace of mind to find out more about this aspect of myself. It took me 10 years of sufferings to realize that I need to put sincere efforts in this direction and finally in 2017 I gathered courage to say goodbye to my fulltime job  as a data scientist and I took a month-long residential yoga teacher training at Sivananda Yoga Vedanta Academy at Trivandrum, Kerala.(200 hr YTT,Yoga Alliance accredited)\n\nThe month long stay in the ashram was about following the gurukul routine of asanas, pranayama, karma yoga, Bhakti yoga, Gyan Yoga (lessons of Bhagavat  Gita).  This experience made me understand that Yoga is not just about sitting in postures but it’s a means of harmonizing and balancing the body, mind and emotion ultimately leading to the unity of individual consciousness and universal consciousness. The aspects of Bhakti Yoga opened my emotions locked deep in my heart as we chanted and sang each morning and evening. I felt lighter in my head and heart by each passing day, the practice of Bhakti yoga set into a belief; this was the first thing I introduced to my kids on my return from ashram.',
              style: TextStyle(
                fontSize: 16
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.8,
            child: Text('\nIn 2019 I got a chance to do a hatha yoga course in Bihar School of Yoga, a yoga ashram established by Swami Satyananda Saraswati (disciple of Swami Sivananda Saraswati). I sensed deep spirituality and truth here, in fact I understood what is spirituality for the first time. I am now a regular at the Bihar School of Yoga in Munger visiting them each year as a devoted student trying to understand this ancient science of yoga. Satyam Yoga is inspired from the teaching of Swami Satyananda Saraswati.\n\nIn yoga they say, first change yourself or don’t advise others if you can’t do it yourself, so 2019 was a year of personal practice where I followed the yoga discipline while being a mother and a wife too. It took me 6 months of sincere efforts to put myself into a discipline, I still practice and will continue to do so till my body permits I started taking public classes since mid 2019 and I love sharing what I experienced and learnt in yoga. It gives me immense satisfaction when I am able to help people around me benefit from Yoga.\n\nI teach classes in both Sivananda and Satyananda style , I firmly believe that yoga is not about stretching your body in different shapes but empowering your mind through meditation, breathing techniques and living in harmony with your inner-self and the outer world. My mission is to inspire people to get physically and mentally strong, as well as happy and contented using the traditional yogic ways.\n',
            style: TextStyle(
              fontSize: 16, 
            ),
            textAlign: TextAlign.justify,
            ),
          ),
      RaisedButton(
        color: Color.fromARGB(255, 17, 30, 108),
        textColor: Colors.white,
        shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(18.0),),
        child: Text(' Learn about our Classes & Courses',
                      style: TextStyle(
                          fontSize: 16),),
                          onPressed: (){
                            Navigator.pushNamed(context, '/courses');
                          },
                          ),
        ],
      )
    );
  }
}