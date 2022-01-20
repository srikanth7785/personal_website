import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class AchievementWidget extends StatelessWidget{

  final Map<String, String> info;
  final Size size;
  final bool isMobile;

  const AchievementWidget({this.info, this.size, this.isMobile});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => launch(info['link']),
      child: Container(
        // color: Colors.grey,
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          child: Stack(
            children: [
              Image.asset(info['imagePath'],fit: BoxFit.cover, width: isMobile ? size.width*0.8 : size.width*0.15, height: size.height*0.25),
              Positioned(
                bottom: -1,
                right: 0.0,
                left: 0.0,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(200, 0, 0, 0),
                        Color.fromARGB(0, 0, 0, 0),
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(info['title'],style: TextStyle(fontSize: isMobile ? 12.0 : 15.0,fontWeight: FontWeight.bold, color: Colors.white70)),
                        Icon(Icons.open_in_new, color: Colors.white30,)
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}