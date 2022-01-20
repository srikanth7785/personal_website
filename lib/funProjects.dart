import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'check.dart';
import 'data.dart';

class FunProjects extends StatelessWidget {
  final Size size;

  FunProjects({this.size});

  final Data data = Data(); 
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.21,
      padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
      // color: Colors.purple,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("FUN PROJECTS 🔥",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),),
          SizedBox(height: 2),
          Container(
            // color: Colors.green,
            height: size.height * 0.17,
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: ClampingScrollPhysics(),
              children: data.funProjects.map((e) => 
                Padding(
                  padding: EdgeInsets.only(right: 15.0),
                  child: Project(
                    appName: e['appName'],
                    imagePath: e['imagePath'],
                    appDescription: e['appDescription'],
                    githubRepoLink: e['githubRepoLink'],
                  ),
                ),
              ).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class Project extends StatelessWidget {

  final String appName;
  final String imagePath;
  final String appDescription;
  final String githubRepoLink;

  Project({this.appName, this.imagePath, this.appDescription, this.githubRepoLink});

  @override
  Widget build(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  final isMobile = SystemCheck().isMobile(size.width);
    return Container(
      padding: EdgeInsets.all(10.0),
      width: isMobile ? size.width * 0.4 : 250.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
        color: Colors.black38,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Container(
                    width: 30.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white70,
                      border: Border.all(width: 0.2, color: Colors.white60),
                      image: DecorationImage(
                        image: AssetImage(imagePath),
                      ),
                    ),
                    ),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(appName,style: GoogleFonts.roboto(fontSize: 15.0,color: Colors.white),),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0,),
            Container(
              height: 40.0,
              child: Text(
                appDescription,
                style: GoogleFonts.droidSerif(fontSize: 10.0,fontWeight: FontWeight.w100,fontStyle: FontStyle.italic,color: Colors.white),
              ),
            ),
            Divider(color: Colors.black54,height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("View it on:  ",style: TextStyle(fontSize: 12.0 ,fontWeight: FontWeight.w100,color: Colors.white60)),
                InkWell(
                  child: Icon(MaterialCommunityIcons.github_circle,),
                  onTap: () => launch(githubRepoLink),
                ),
                SizedBox(width: 10.0,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
