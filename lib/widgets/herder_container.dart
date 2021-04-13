import 'package:flutter/material.dart';
import 'package:login_page_medical2/utils/color.dart';
class HeaderContainer extends StatelessWidget {
  var text = "log in";
  HeaderContainer(this.text);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: BoxDecoration(

          gradient: LinearGradient(
              colors: [blueColors, blueLightColors],
              end: Alignment.bottomCenter,
              begin: Alignment.topCenter),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100),bottomRight: Radius.circular(100))),
      child: Stack(
        children: <Widget>[
          Center(
            child: Positioned(
              bottom: 50,
                right:20,
                child: Text(
              text,
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "bold",
                  fontSize: 30),
            )),
          )
        ],
      ),
    );
  }
}
