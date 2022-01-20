// import 'dart:html';
// import 'dart:ui' as ui;

// import 'package:flutter/material.dart';

// class IFrame extends StatefulWidget {
//   final String link;

//   const IFrame({this.link});
//   @override
//   _IFrameState createState() => _IFrameState();
// }

// class _IFrameState extends State<IFrame> {
//   Widget _iframeWidget;
  
//   final IFrameElement _iframeElement = IFrameElement();

//   @override
//   void initState() {
//     super.initState();
//     _iframeElement.height = '500';
//     _iframeElement.width = '500';
//     // _iframeElement.src = 'https://www.linkedin.com/embed/feed/update/urn:li:share:6682514356011462656';
//     _iframeElement.src = widget.link;
//     // https://www.linkedin.com/posts/vanamalasrikanth_milestone-flutter-1kactiveusers-activity-6682514356791578624-054h

//     // ignore: undefined_prefixed_name
//     ui.platformViewRegistry.registerViewFactory(
//       'iframeElement',
//       (int viewId) => _iframeElement,
//     );

//     _iframeWidget = HtmlElementView(
//       key: UniqueKey(),
//       viewType: 'iframeElement',
//     );
    
//   }
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 200,
//       width: 500,
//       child: _iframeWidget,
//     );
//   }
// }