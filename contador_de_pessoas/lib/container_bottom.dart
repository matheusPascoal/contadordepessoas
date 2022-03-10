import 'package:flutter/material.dart';

class bottom extends StatelessWidget {
  final Color? color;

  const bottom({Key? key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: 10,
      width: 10,
    );
  }
}
