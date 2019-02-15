import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InviteFriends extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Stack(
        children: <Widget>[
          Align(
            child: Container(
              height: 80,
              margin: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      stops: [
                        0,
                        1
                      ],
                      colors: [
                        Color.fromARGB(255, 231, 85, 111),
                        Color.fromARGB(255, 207, 64, 109)
                      ]),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        blurRadius: 2,
                        offset: Offset(0, 2))
                  ]),
            ),
          ),
          Positioned(
            top: 22,
            left: 30,
            child: Text(
              "Invita i tuoi nemici!",
              style: TextStyle(
                  fontFamily: "Nunito",
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                  fontSize: 18),
            ),
          ),
          Positioned(
            top: 44,
            left: 30,
            child: Text(
                "Giocare con gli amici è noioso!\nGioca con i nemici piuttosto!"),
          ),
          Positioned(
            right: 60,
            top: 5,
            child: SvgPicture.asset(
              "assets/images/home/friends_emoji.svg",
              height: 90,
            ),
          ),
          Positioned(
            top: 35,
            right: 15,
            child: SvgPicture.asset(
              "assets/images/home/right_arrow.svg",
              height: 30,
            ),
          )
        ],
      ),
    );
  }
}
