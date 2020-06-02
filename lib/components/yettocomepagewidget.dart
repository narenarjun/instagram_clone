import 'package:flutter/material.dart';

class YetToImplement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Page loading .... ",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 28,
              ),
            ),
            Text(
              "(page yet to implement)",
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
