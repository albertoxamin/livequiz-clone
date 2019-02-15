import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BestWinners extends StatelessWidget {
  const BestWinners({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
      padding: EdgeInsets.all(16),
      height: 270,
      decoration: BoxDecoration(
        color: Colors.white12,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: <Widget>[
          Text("I MIGLIORI LIVE QUIZZER DI SEMPRE!",
              style: TextStyle(
                  fontFamily: "Nunito",
                  fontWeight: FontWeight.w900,
                  color: Colors.white54,
                  fontSize: 12)),
          Flexible(
            child: Stack(
              children: <Widget>[
                Align(child: Winner(medal: "gold"), alignment: Alignment.bottomLeft,),
                Align(child: Winner(medal: "silver"), alignment: Alignment.bottomCenter,),
                Align(child: Winner(medal: "bronze"), alignment: Alignment.bottomRight,)
              ],
            ),
          ),
          Container(
            height: 2,
            color: Colors.white24,
            margin: EdgeInsets.only(bottom: 7.5),
          ),
          Text("#PREMIVERI VINTI IN TOTALE",
              style: TextStyle(
                  fontFamily: "Nunito",
                  fontWeight: FontWeight.w900,
                  color: Colors.white54,
                  fontSize: 12)),
          Text(
            "89.500 €",
            style: TextStyle(
                fontFamily: "Nunito",
                fontWeight: FontWeight.w900,
                color: Color.fromARGB(255, 254, 244, 181),
                fontSize: 32),
          )
        ],
      ),
    );
  }
}

class Winner extends StatelessWidget {
  final String medal;

  Winner({this.medal: "gold"});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 100,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
              top: 0,
              child: SvgPicture.asset(
                "assets/images/home/best_live_quizzers_${medal}_circle.svg",
                width: 80,
              )),
          Positioned(
              top: 15,
              child: SvgPicture.asset(
                "assets/images/dummy_avatars/avatar1.svg",
                width: 50,
              )),
          Positioned(
              bottom: 40,
              child: Text(
                "500,00 €",
                style: TextStyle(
                    fontFamily: "Nunito",
                    fontWeight: FontWeight.w900,
                    color: Color.fromARGB(255, 254, 244, 181),
                    fontSize: 20),
              )),
          Positioned(
            bottom: 20,
            child: Text("Nome C.",
                style: TextStyle(
                    fontFamily: "Nunito",
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontSize: 12)),
          )
        ],
      ),
    );
  }
}
