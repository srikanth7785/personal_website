import 'package:flutter_icons/flutter_icons.dart';


class Data{

  List _curatedProjects = [
    {
      'title': 'Gmaterials',
      'subTitle': 'Gmaterils',
      'imagePath': 'images/Gmaterials.png',
      'numberofDownloads': '1.5K+',
      'rating': '4.7',
      'appDescription': 'Gmaterials is about accessing materials for students of GITAM, a one-stop destination for student portal, GLearn, GIT Results & G-Events.',
      'githubRepoLink': 'https://github.com/srikanth7785/Gmaterials_App',
      'availableOnPlayStore': true,
      'playStoreLink': 'https://play.google.com/store/apps/details?id=com.we.intialp',
    },
    {
      'title': 'Othello',
      'subTitle': 'Othello',
      'imagePath': 'images/othello.png',
      'numberofDownloads': '10K+',
      'rating': '4.7',
      'appDescription': 'Othello(AKA Reversi) is a strategy board game, developed during my initial days of learning Flutter, with single and multiplayer modes. Integrated with Admob.',
      'githubRepoLink': 'https://github.com/srikanth7785/Othello_App_using_Flutter',
      'availableOnPlayStore': true,
      'playStoreLink': 'https://play.google.com/store/apps/details?id=com.we.intialp',
    },
    {
      'title': 'Master Yogi',
      'subTitle': 'Prototype',
      'imagePath': 'images/masterYogi.jpeg',
      'numberofDownloads': '0',
      'rating': '0',
      'appDescription': 'A virtual yoga assistant app which helps users with the Asanas by detecting the current posture and suggesting the next one.',
      'githubRepoLink': 'https://github.com/srikanth7785/Master-Yogi',
      'availableOnPlayStore': false,
      'playStoreLink': 'no',
    },
    // {
    //   'title': 'Finger Counter',
    //   'subTitle': '',
    //   'imagePath': 'images/fingerCounter.png',
    //   'numberofDownloads': '0',
    //   'rating': '0',
    //   'appDescription': 'Finger Counter is a basic app that demonstrates how to integrate ML Model into a Flutter app, where ML model is obtained from Google\'s Teachable Machine.',
    //   'githubRepoLink': 'https://github.com/srikanth7785/Teachable_Machine_with_Flutter',
    //   'availableOnPlayStore': false,
    //   'playStoreLink': 'no',
    // },
    {
      'title': 'Cupertino Snake',
      'subTitle': 'Proof of concept',
      'imagePath': 'images/snake.jpg',
      'numberofDownloads': '0',
      'rating': '0',
      'appDescription': 'A classic snake game implemented with cupertino switch widgets.',
      'githubRepoLink': 'https://github.com/srikanth7785/Snake',
      'availableOnPlayStore': false,
      'playStoreLink': 'no',
    },
    {
      'title': 'Events Fetcher',
      'subTitle': 'web scrapping app',
      'imagePath': 'images/events.jpg',
      'numberofDownloads': '0',
      'rating': '0',
      'appDescription': 'a web scrapping app which will fetch all the event details from GITAM events portal and displays in the app.',
      'githubRepoLink': 'https://github.com/srikanth7785/Web_Scrapping_with_Flutter',
      'availableOnPlayStore': false,
      'playStoreLink': 'no',
    },
  ];

  List _funProjects = [
    {
      'appName': 'Cupertino Snake',
      'imagePath':'images/snake.jpg',
      'appDescription': 'A classic snake game implemented with cupertino switch widgets.',
      'githubRepoLink': 'https://github.com/srikanth7785/Snake',
    },
    {
      'appName': 'Events Fetcher',
      'imagePath':'images/events.jpg',
      'appDescription': 'A web scrapping app which will fetch all the event details from GITAM events portal and displays in the app.',
      'githubRepoLink': 'https://github.com/srikanth7785/Web_Scrapping_with_Flutter',
    },
    {
      'appName': 'Attendance Fetcher',
      'imagePath': 'images/attendance.png',
      'appDescription':'An app which will fetch attendance from GITAM student portal by automating the entire frond-end process.',
      'githubRepoLink': 'https://github.com/srikanth7785/Attendance_Automation_with_Flutter',
    },
  ];

  final List _socialProfile = [
    {
      'name': 'LinkedIn',
      'icon': FontAwesome.linkedin_square,
      'link': 'https://www.linkedin.com/in/vanamalasrikanth/',
    },
    {
      'name': 'Github',
      'icon': FontAwesome.github,
      'link': 'https://github.com/srikanth7785',
    },
    {
      'name': 'Twitter',
      'icon': FontAwesome.twitter,
      'link': 'https://twitter.com/srikanth7785',
    },
    {
      'name': 'Play Store',
      'icon': MaterialCommunityIcons.google_play,
      'link': 'https://play.google.com/store/apps/dev?id=5890668678449730451',
    },
    {
      'name': 'Mail',
      'icon': FontAwesome.envelope,
      'link': 'mailto:vanamalasrikanth7785@gmail.com',
    },
  ];

  final String _introText = '''I'm an Android Developer\n    Inspired by the cross platform functionality of Flutter\n      '''
          '''As it can be used to develop Andriod,iOS and Web Applications as well.\n\n'''
          '''I have good experience in Android development, with Flutter.\n\n'''
          '''I also have a couple of apps on Google Play Store developed with Flutter,\n   with good number of downloads, active users and rating for each of them.''';


  final List _achievements =[
    {
      'title': 'Dream come true 😍',
      'link': 'https://www.linkedin.com/posts/vanamalasrikanth_flutter-bangalore-machinelearning-activity-6628021785138917376-2owG',
      // 'imagePath': 'images/work.png',
      'imagePath': 'images/dream.png',
    },
    {
      'title': 'Pocket money🤑',
      'link': 'https://www.linkedin.com/posts/vanamalasrikanth_achievement-admob-payment-activity-6842800411729100800-E6EG',
      // 'imagePath': 'images/working.png',
      'imagePath': 'images/pocketMoney.png',
    },
    {
      'title': 'New Beginning💥',
      'link': 'https://www.linkedin.com/posts/vanamalasrikanth_newjob-job-tcs-activity-6806076362701578240-EKm3',
      // 'imagePath': 'images/working.png',
      'imagePath': 'images/newBeginning.jpg',
    },
    {
      'title': 'Milestone achieved🔥',
      'link': 'https://www.linkedin.com/posts/vanamalasrikanth_milestone-flutter-1kactiveusers-activity-6682514356791578624-054h',
      // 'imagePath': 'images/writing.jpg',
      'imagePath': 'images/gmaterialsMilestone.png',
    },
    {
      'title': 'First Dollar 💲',
      'link': 'https://www.linkedin.com/posts/vanamalasrikanth_flutter-android-crossplatform-activity-6582621756178169856-Rgv4',
      'imagePath': 'images/firstDollar.jpg',
    },
  ];
  
  List get curatedProjects => _curatedProjects;
  List get funProjects => _funProjects;
  List get socialProfile => _socialProfile;
  String get introText => _introText;
  List get achievements => _achievements;

}