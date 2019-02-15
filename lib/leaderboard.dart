import 'package:doggorate/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Leaderboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var positions = <Widget>[
      Text("POS.",
          style: TextStyle(
              fontFamily: "Nunito",
              fontWeight: FontWeight.w900,
              color: Color.fromRGBO(239, 174, 95, 1),
              fontSize: 10))
    ];
    var prizes = <Widget>[
      Text("PREMIO",
          style: TextStyle(
              fontFamily: "Nunito",
              fontWeight: FontWeight.w900,
              color: Color.fromRGBO(239, 174, 95, 1),
              fontSize: 10)),
    ];
    var people = <Widget>[
      SizedBox(
        height: 14,
      )
    ];
    var points = <Widget>[
      Text("PUNTI",
          style: TextStyle(
              fontFamily: "Nunito",
              fontWeight: FontWeight.w900,
              color: Color.fromRGBO(134, 211, 247, 1),
              fontSize: 10))
    ];
    List<BoxShadow> shadow(int i) {
      if (i == 10)
        return <BoxShadow>[
          BoxShadow(color: Colors.black26, offset: Offset(0, -3))
        ];
      else
        return [];
    }

    for (var i = 0; i < 11; i++) {
      positions.add(Container(
        width: 50,
        height: 35,
        decoration: BoxDecoration(
            color: Color.fromRGBO(221, 132, 74, 1), boxShadow: shadow(i)),
        child: Center(
            child: Text("${i + 1}°",
                style: TextStyle(
                    fontFamily: "Nunito",
                    fontWeight: FontWeight.w900,
                    fontSize: 12))),
      ));
      prizes.add(Container(
        width: 50,
        height: 35,
        decoration: BoxDecoration(
            color: Color.fromRGBO(218, 119, 59, 1),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(i == 0 ? 12 : 0),
                bottomRight: Radius.circular(i == 10 ? 12 : 0)),
            boxShadow: shadow(i)),
        child: Center(
            child: Text("100 €",
                style: TextStyle(
                    fontFamily: "Nunito",
                    fontWeight: FontWeight.w900,
                    fontSize: 12))),
      ));
      people.add(Container(
        width: 174,
        height: 35,
        decoration: BoxDecoration(
            color: Color.fromRGBO(63, 145, 209, 1),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(i == 0 ? 12 : 0),
                bottomLeft: Radius.circular(i == 10 ? 12 : 0)),
            boxShadow: shadow(i)),
        child: Row(children: <Widget>[
          SizedBox(width: 12),
          SvgPicture.asset(
            "assets/images/dummy_avatars/avatar1.svg",
            width: 25,
          ),
          SizedBox(width: 12),
          Text("Nome C.",
              style: TextStyle(
                  fontFamily: "Nunito",
                  fontWeight: FontWeight.w900,
                  fontSize: 12))
        ]),
      ));
      points.add(Container(
        width: 75,
        height: 35,
        decoration: BoxDecoration(
            color: Color.fromRGBO(75, 155, 213, 1),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(i == 0 ? 12 : 0),
                bottomRight: Radius.circular(i == 10 ? 12 : 0)),
            boxShadow: shadow(i)),
        child: Center(
            child: Text("1800",
                style: TextStyle(
                    fontFamily: "Nunito",
                    fontWeight: FontWeight.w900,
                    fontSize: 12))),
      ));
    }
    return Container(
      height: 600,
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 16,
            child: SvgPicture.asset(
              "assets/images/logo_squared.svg",
              width: 50,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SvgPicture.asset(
              "assets/images/leaderboard/header.svg",
              height: 90,
            ),
          ),
          Positioned(right: 16, child: CircleButton("i")),
          Positioned(
            top: 106,
            left: 0,
            child: Container(
                child: Row(
              children: <Widget>[
                Column(children: positions),
                Column(children: prizes),
                SizedBox(width: 10),
                Column(children: people),
                Column(children: points),
              ],
            )),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child:
                  CircleButton("CLASSIFICA COMPLETA", width: 250, radius: 8)),
        ],
      ),
    );
  }
}
