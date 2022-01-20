import 'package:flutter/material.dart';
// import 'package:flutter_icons/flutter_icons.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'check.dart';
import 'data.dart';
import 'widgets/projectWidget.dart';

class CuratedList extends StatelessWidget {
  final Size size;

  CuratedList({this.size});

  final Data data = Data(); 
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.29,
      padding: EdgeInsets.all(10.0),
      // color: Colors.red,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("CURATED PROJECTS 🚀",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),),
          SizedBox(height: 5),
          Container(
            height: size.height * 0.23,
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: ClampingScrollPhysics(),
              children: List.generate(data.curatedProjects.length + 1, (i){
                return i < data.curatedProjects.length ? Padding(
                  padding: EdgeInsets.only(right: 15.0),
                  child: ProjectWidget(
                    data: data.curatedProjects[i],
                  ),
                ) : InkWell(
                  splashColor: Colors.deepPurple,
                  onTap: () => launch("https://github.com/srikanth7785"),
                  child: Container(
                    width: 200.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      // color: Colors.grey.shade700,
                      border: Border.all(color: Colors.white,width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(15.0))
                    ),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text('''...and many more..\n\n'''
                      '''View all of them on\n\n'''
                      '''GitHub ↗'''),
                    ),
                  ),
                );
              })
            ),
          ),
        ],
      ),
    );
  }
}
