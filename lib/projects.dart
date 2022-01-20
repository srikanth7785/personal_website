import 'package:flutter/material.dart';

import 'curatedList.dart';
import 'funProjects.dart';

class ProjectsSection extends StatelessWidget {
  final Size size;

  const ProjectsSection({this.size});

  secondBackgroundImage(height){
    return Image.asset(
      "images/work.png",
      alignment: Alignment.centerRight,
      width: double.maxFinite,
      height: height,
      fit: BoxFit.cover,
    );
  }

  @override
  Widget build(BuildContext context) {
    // return Stack(
    //   children: [
    //     // secondBackgroundImage(size.height*0.5),
    //     Container(
          // color: Colors.black54,
          return Container(
          color: Colors.grey,
            // color: Colors.white60,
            child: Column(
              children: [
                CuratedList(size: size),
                FunProjects(size: size)
              ],
            ),
          );
      //   ),
      // ],
    // );
  }
}