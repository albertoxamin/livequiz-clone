import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PrizeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 158,
        height: 58,
        decoration: BoxDecoration(
            // color: Color.fromARGB(255, 237, 125, 73),
            gradient: LinearGradient(
              // Where the linear gradient begins and ends
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              // Add one stop for each color. Stops should increase from 0 to 1
              stops: [0.2, 0.5, 0.8],
              colors: [
                Color.fromARGB(255, 237, 125, 73),
                Color.fromARGB(255, 240, 155, 68),
                Color.fromARGB(255, 237, 125, 73)
              ],
            ),
            border: Border.all(
              color: Color.fromARGB(255, 234, 223, 177),
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(10),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Color.fromARGB(255, 176, 56, 26),
                  offset: Offset(0, 5)),
              BoxShadow(
                color: Colors.black26,
                blurRadius: 20.0,
                spreadRadius: 5.0,
                offset: Offset(0, 15),
              )
            ]),
        child: Stack(children: <Widget>[
          Positioned(
            left: 15,
            top: 12.5,
            child: SvgPicture.asset(
              "assets/images/prize_glyph.svg",
              height: 30,
            ),
          ),
          Positioned(
            right: 15,
            top: 5,
            child: Text(
              "200 €",
              style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Nunito Sans",
                  color: Color.fromARGB(255, 253, 243, 220)),
            ),
          )
        ]));
  }
}
