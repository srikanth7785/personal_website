import 'package:flutter/material.dart';

import 'curatedList.dart';
import 'footer.dart';
import 'check.dart';
import 'Introduction.dart';
import 'achievementsGallery.dart';
// import 'widgets/iframe.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool isMobile; 

  @override
  Widget build(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  isMobile = SystemCheck().isMobile(size.width);
  
    return Scaffold(
      body: Scrollbar(
        child: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            color: Colors.black,
            // gradient: LinearGradient(
            //   begin: Alignment.topLeft,
            //   end: Alignment.bottomRight,
            //   colors: [
            //     Colors.black87,
            //     Colors.black87,
            //   ],
            // ),
          ),
            child: ListView(
              shrinkWrap: true,
              children: [
                Introduction(isMobile,size),
                // Divider(height: 1.0,color: Colors.white38),
                Divider(height: 1.0,color: Colors.white54),
                // ProjectsSection(size: size),
                CuratedList(size: size),
                AchievementsGallery(size: size, isMobile: isMobile),
                Footer(isMobile: isMobile),
              ],
            ),
          // ),
        ),
      ),
    );
  }
}

