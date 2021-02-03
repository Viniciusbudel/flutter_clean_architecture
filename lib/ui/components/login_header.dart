import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      margin: EdgeInsets.only(bottom: 32),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Theme.of(context).primaryColorLight,
            Theme.of(context).primaryColorDark,
          ],
        ),
        boxShadow: [
          BoxShadow(
              blurRadius: 4,
              spreadRadius: 0,
              offset: Offset(0, 0),
              color: Colors.black)
        ],
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80)),
      ),
      child: Image(
        image: AssetImage('lib/ui/assets/logo.png'),
      ),
    );
  }
}
