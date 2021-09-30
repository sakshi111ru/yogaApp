import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Filed extends StatelessWidget {
  final Color color;
  final String name;
  final double fontsize;
  const Filed({
    Key? key,
    required this.color,
    required this.name,
    required this.fontsize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        height: 45,
        width: 240,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.white,
              fontSize: fontsize,
            ),
          ),
        ),
      ),
    );
  }
}
