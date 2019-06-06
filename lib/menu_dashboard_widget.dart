import 'package:flutter/material.dart';

final TextStyle menuFontStyle = TextStyle(color: Colors.white, fontSize: 20);
final Color backgroundColur = Color(0xFF343442);

class MenuDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColur,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            menuOlustur(context),
            dashBoardOlustur(context),
          ],
        ),
      ),
    );
  }

  Widget menuOlustur(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Dashboard",
              style: menuFontStyle,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Mesajlar",
              style: menuFontStyle,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Utility Bills",
              style: menuFontStyle,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Fund Transfer",
              style: menuFontStyle,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Branches",
              style: menuFontStyle,
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  Widget dashBoardOlustur(BuildContext context) {
    return Material(
      elevation: 8,
      color: backgroundColur,
      child: Container(
        padding: EdgeInsets.only(left: 16, right: 16, top: 8),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                Text(
                  "My Cards",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                Icon(
                  Icons.add_circle_outline,
                  color: Colors.white,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
