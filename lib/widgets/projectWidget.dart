import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import '../check.dart';
class ProjectWidget extends StatelessWidget {

  final Map<String,dynamic> data;

  ProjectWidget({this.data});
  @override
  Widget build(BuildContext context) {
    String title = data['title'];
    String subTitle = data['subTitle'];
    String imagePath = data['imagePath'];
    String numberofDownloads = data['numberofDownloads'];
    String rating = data['rating'];
    String appDescription = data['appDescription'];
    String githubRepoLink = data['githubRepoLink'];
    bool availableOnPlayStore = data['availableOnPlayStore'];
    String playStoreLink = data['playStoreLink'];
    Size size = MediaQuery.of(context).size;
    bool isMobile = SystemCheck().isMobile(size.width);
    return Container(
      padding: EdgeInsets.all(10.0),
      width: isMobile ? size.width * 0.82 : 300.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
        border: Border.all(width: 1.0, color: Colors.white),
        // color: Colors.grey.shade700
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
                    width: 60.0,
                    height: 60.0,
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
                      Text(title,style: GoogleFonts.roboto(fontSize: 20.0,color:Colors.white,)),
                      SizedBox(height: 2.0,),
                      Text( availableOnPlayStore ? "$numberofDownloads📥 | $rating⭐" : subTitle,style: GoogleFonts.lato(color: availableOnPlayStore ? Colors.white : Colors.white60)),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0,),
            Container(
              height: 50.0,
              child: Text(
                appDescription,
                style: GoogleFonts.droidSerif(fontSize: 10.0,fontWeight: FontWeight.w100,fontStyle: FontStyle.italic,color: Colors.white),
              ),
            ),
            Divider(color: Colors.white,height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("View it on:  ",style: TextStyle(fontSize: 12.0 ,fontWeight: FontWeight.w100,color: Colors.white60)),
                InkWell(
                  child: Icon(MaterialCommunityIcons.github_circle),
                  onTap: () => launch(githubRepoLink),
                ),
                SizedBox(width: 10.0,),
                availableOnPlayStore ? InkWell(
                  child: Icon(MaterialCommunityIcons.google_play),
                  onTap: () => launch(playStoreLink),
                ) : Container(),
                title == "Master Yogi" ? Text("Working Prototype :",style: TextStyle(fontSize: 12.0 ,fontWeight: FontWeight.w100,color: Colors.white60)) : Container(),
                title == "Master Yogi" ? InkWell(
                  child: Icon(MaterialCommunityIcons.youtube),
                  onTap: () => launch("https://youtu.be/WQynHhOKlqw"),
                ) : Container(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
