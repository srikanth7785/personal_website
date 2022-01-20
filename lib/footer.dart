import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'data.dart';
class Footer extends StatelessWidget {
  final bool isMobile;
  Footer({this.isMobile});
  final Data data = Data();
  
  footerText(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text("Vanamala Srikanth",style: GoogleFonts.aBeeZee(fontSize: 25.0,fontWeight: FontWeight.normal),),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Developed with ",
                  style: TextStyle(color: Colors.white70)
                ),
                TextSpan(
                  text: "Flutter",
                  style: TextStyle(decoration: TextDecoration.underline,color: Colors.blueAccent.shade200),
                  recognizer: TapGestureRecognizer()..onTap = (){launch('https://flutter.dev/');}
                ),
                TextSpan(
                  text: ' ❤❤'
                ),
              ],
            ),
          ),
          // Text("Developed with Flutter ♥",style: GoogleFonts.lato(fontSize: 15.0)),
        ],
      ),
    );
  }

  contact() {
    return Row(
      children: data.socialProfile.map((e) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: IconButton(
          icon: Icon(
            e['icon'],
            size: 30.0,
          ),
          onPressed: () => launch(e['link']),
          tooltip: e['name'],),
      )).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 120.0,
      height: isMobile ? 200.0 : 120.0,
      color: Colors.white38,
      padding: EdgeInsets.fromLTRB(15, 30, 15, 15),
        child: Column(
          children: [
            isMobile ? Column(
              children: [
                footerText(),
                SizedBox(height: 10.0,),
                contact(),
              ],
            ) : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                footerText(),
                contact(),
              ],
            ),
          ],
        ),
    );
  }
}
