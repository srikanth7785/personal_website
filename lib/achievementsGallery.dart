import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'data.dart';
import 'widgets/achievementWidget.dart';

class AchievementsGallery extends StatelessWidget {

  final Data data = Data();
  final Size size;
  final bool isMobile;
  static List achievements;
  
  AchievementsGallery({this.size, this.isMobile,}){
    achievements = data.achievements;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.green,
      // margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("ACHIEVEMENTS GALLERY 🖼", style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white,fontSize: 15.0),),
          CarouselSlider.builder(
            itemCount: achievements.length,
            itemBuilder: (context, index, i) => AchievementWidget(info: achievements[index], size: size, isMobile: isMobile,),
            options: CarouselOptions(
              viewportFraction: isMobile ? 0.8 : 0.25,
              // height: size.height*0.45,
              height: size.height*0.2,
              enlargeCenterPage: true,
              autoPlay: true, 
            ),
          ),
        ],
      ),
    );
  }
}

