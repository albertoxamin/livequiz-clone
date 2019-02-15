import 'dart:async';
import 'package:doggorate/best_winners.dart';
import 'package:doggorate/invite_friends.dart';
import 'package:doggorate/leaderboard.dart';
import 'package:doggorate/prize_button.dart';
import 'package:doggorate/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:share/share.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.white,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Dog rater',
        theme: ThemeData(brightness: Brightness.dark, fontFamily: "Nunito"),
        home: MyHomePage(title: 'Dog rater'),
        builder: (context, child) {
          return MediaQuery(
            child: child,
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          );
        });
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _timeString = "";
  void _getTime() {
    final int now = 1550178000000 +1000*60*60*24 - DateTime.now().millisecondsSinceEpoch;
    final String formattedDateTime = _formatDateTime(now);
    setState(() {
      _timeString = formattedDateTime;
    });
  }

  String _formatDateTime(int dur) {
    final f = new NumberFormat("00");
    int s = (dur / 1000).round();
    int m = (s / 60).round();
    int h = (m / 60).round() - 1;

    return "${f.format(h)}:${f.format(m % 60)}:${f.format(s % 60)}";
  }

  @override
  void initState() {
    Timer.periodic(Duration(seconds: 1), (Timer t) => _getTime());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        SvgPicture.asset(
          "assets/images/background.svg",
          fit: BoxFit.fitHeight,
        ),
        Container(
          padding: EdgeInsets.only(top: 20),
          child: ListView(
            children: <Widget>[
              SizedBox(height: 15),
              Center(
                child: SvgPicture.asset(
                  "assets/images/logo_squared.svg",
                  width: 72.5,
                ),
              ),
              SizedBox(height: 25.0),
              Center(
                  child: RichText(
                text: TextSpan(
                  text: "PROSSIMO GIOCO: ",
                  style: TextStyle(
                      color: Colors.white70,
                      fontFamily: "Nunito Sans",
                      fontWeight: FontWeight.w700,
                      fontSize: 14),
                  children: <TextSpan>[
                    TextSpan(
                        text: " Oggi ore 13:30",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: "Nunito Sans",
                            fontSize: 17,
                            color: Colors.white)),
                  ],
                ),
              )),
              SizedBox(height: 7.5),
              Center(
                  child: Text(
                _timeString,
                style: TextStyle(fontSize: 56, fontWeight: FontWeight.w700),
              )),
              SizedBox(height: 10.0),
              Center(child: PrizeButton()),
              SizedBox(
                height: 35,
              ),
              Profile(),
              SizedBox(height: 5),
              FlatButton(
                padding: EdgeInsets.all(0),
                child: InviteFriends(),
                onPressed: () {
                  Share.share('check out my website https://example.com');
                },
              ),
              BestWinners(),
              Container(
                height: 2,
                color: Colors.white24,
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              ),
              Leaderboard()
            ],
          ),
        )
      ],
    ));
  }
}
