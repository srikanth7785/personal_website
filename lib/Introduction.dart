import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'data.dart';

class Introduction extends StatefulWidget {
  final bool isMobile;
  final Size size;
  Introduction(this.isMobile,this.size);

  @override
  _IntroductionState createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {

  bool animate = false;
  Data data = Data();

  // void initState(){
  //   super.initState();
  //   Timer(Duration(milliseconds: 5), () => setState(() => animate = true));
  // }

  name(){
    return Padding(
      padding: widget.isMobile ? EdgeInsets.all(10.0) : EdgeInsets.only(top: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // AnimatedContainer(
          //   duration: Duration(seconds: 1),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 1.0,
                color: Colors.white,
              ),
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  "images/me.jpg",
                ),
              ),
            ),
            // width: animate ? widget.isMobile ? 150.0 : widget.size.width * 0.12 : 5.0,
            // height: animate ? widget.isMobile ? 150.0 : widget.size.width * 0.12 : 5.0,
            width: widget.isMobile ? 150.0 : widget.size.width * 0.12,
            height: widget.isMobile ? 150.0 : widget.size.width * 0.12,
          ),
          SizedBox(height: 10.0,),
          Text("Vanamala Srikanth",style: GoogleFonts.aBeeZee(fontSize: 25.0,fontWeight: FontWeight.normal),),
          Text("Flutter Enthusiast 👀 | Systems Engineer @TCS 💻",style: GoogleFonts.lato(fontSize: 10.0)),
          socialMedia(),
        ],
      ),
    );
  }

  introText(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(data.introText,
          style: GoogleFonts.lato(
            fontSize: widget.isMobile ? 12.0 : widget.size.width * 0.012,
          ),
        ),
      ],
    );
  }

  socialMedia(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: data.socialProfile.map((e) => IconButton(
        onPressed: () => launch(e['link']),
        icon: Icon(e['icon']),
        tooltip: e['name'],
        )).toList(),
    );
  }

  firstBackgroundImage(imageHeightonMobile){
    return Image.asset(
      "images/writing.jpg",
      alignment: Alignment.centerRight,
      width: double.maxFinite,
      // height: widget.isMobile ? imageHeightonMobile : 350.0,
      // height: widget.isMobile ? imageHeightonMobile : widget.size.height * 0.45,
      height: imageHeightonMobile,
      fit: BoxFit.cover,
    );
  }

  @override
  Widget build(BuildContext context) {
  
    // return Container(
    //   // height: widget.isMobile ? 520.0 : widget.size.height * 0.45,,
    //   height: widget.size.height,
    //   child: Stack(
    //     children: [
    //       firstBackgroundImage(widget.size.height),
          return Container(
            // color: Colors.white70,
            width: double.maxFinite,
            child: widget.isMobile ? Column(
              children:[
                name(),
                Divider(
                  height: 1.0,
                  color: Colors.black26,
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: introText(),
                ),
              ],
            ) : Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              name(),
              introText(),
            ],
          ),
          );
    //     ],
    //   ),
    // );
  }
}
