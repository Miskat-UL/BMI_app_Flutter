import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  ReuseableCard({@required this.colour, this.cardChlid});

  final Widget cardChlid;
  final Color colour;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChlid,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
