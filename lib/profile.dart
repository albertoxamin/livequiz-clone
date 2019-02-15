import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 280,
        padding: EdgeInsets.only(left: 16, right: 16),
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    height: 270,
                    decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10.0,
                          spreadRadius: -10.0,
                          offset: Offset(0, 0),
                        )
                      ],
                    ))),
            Positioned(top: 25, left: 15, child: CircleButton("?")),
            Positioned(top: 25, right: 15, child: CircleButton("…")),
            Align(
                alignment: Alignment.topCenter,
                child: Column(children: <Widget>[
                  SvgPicture.asset(
                    "assets/images/dummy_avatars/avatar1.svg",
                    width: 75,
                    height: 75,
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "Nome C.",
                    style: TextStyle(
                        fontFamily: "Nunito Sans",
                        fontWeight: FontWeight.w900,
                        fontSize: 18),
                  )
                ])),
            Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: 170,
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: 170,
                          padding: EdgeInsets.only(top: 12),
                          child: Column(
                            children: <Widget>[
                              Text("VINCITA",
                                  style: TextStyle(
                                      fontFamily: "Nunito",
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white54,
                                      fontSize: 12)),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                "420,00 €",
                                style: TextStyle(
                                    fontFamily: "Nunito",
                                    fontWeight: FontWeight.w900,
                                    color: Color.fromARGB(255, 254, 244, 181),
                                    fontSize: 32),
                              ),
                              Text("Richiedi entro il",
                                  style: TextStyle(
                                      fontFamily: "Nunito",
                                      color: Colors.white54,
                                      fontSize: 12)),
                              Text("17-02-2019",
                                  style: TextStyle(
                                      fontFamily: "Nunito",
                                      color: Colors.white54,
                                      fontSize: 12)),
                              SizedBox(
                                height: 15,
                              ),
                              CircleButton(
                                "RICHIEDI",
                                width: 90,
                                radius: 8,
                                backgroundColor: Colors.white10,
                                borderColor: Colors.white12,
                                fontSize: 14,
                              )
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: 2,
                          height: 125,
                          color: Colors.white24,
                          margin: EdgeInsets.only(bottom: 7.5),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          width: 170,
                          padding: EdgeInsets.only(top: 12),
                          child: Column(
                            children: <Widget>[
                              Text("POSIZIONE",
                                  style: TextStyle(
                                      fontFamily: "Nunito",
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white54,
                                      fontSize: 12)),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                "1",
                                style: TextStyle(
                                    fontFamily: "Nunito",
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,
                                    fontSize: 32),
                              ),
                              Text("Grande! Sei meglio del",
                                  style: TextStyle(
                                      fontFamily: "Nunito",
                                      color: Colors.white,
                                      fontSize: 12)),
                              Text("99% dei giocatori",
                                  style: TextStyle(
                                      fontFamily: "Nunito",
                                      color: Colors.white,
                                      fontSize: 12)),
                              SizedBox(
                                height: 15,
                              ),
                              CircleButton(
                                "CLASSIFICA",
                                width: 100,
                                radius: 8,
                                backgroundColor: Colors.white10,
                                borderColor: Colors.white12,
                                fontSize: 14,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ));
  }
}

class CircleButton extends StatelessWidget {
  final String icon;
  final double width;
  final double radius;
  final Color borderColor;
  final Color backgroundColor;
  final double fontSize;

  CircleButton(this.icon,
      {this.width: 27.5,
      this.radius: 15,
      this.borderColor: Colors.white30,
      this.backgroundColor: Colors.white24,
      this.fontSize: 18});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 27.5,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
      child: Center(
          child: Text(
        icon,
        style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.w900),
        textAlign: TextAlign.center,
      )),
    );
  }
}
