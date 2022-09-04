import 'package:flutter/material.dart';

class IndexNumber extends StatelessWidget {
  const IndexNumber({
    Key? key,
    required this.number,
  }) : super(key: key);
  final int number;
  @override
  Widget build(BuildContext context) {
    return Text(
      (number).toString(),
      style: const TextStyle(
        fontSize: 120,
        fontWeight: FontWeight.w600,
        shadows: [
          Shadow(
            offset: Offset(-1.5, -1.5),
            color: Color.fromRGBO(106, 18, 114, 1),
          ),
          Shadow(
            offset: Offset(1.5, -1.5),
            color: Color.fromRGBO(106, 18, 114, 1),
          ),
          Shadow(
            offset: Offset(1.5, 1.5),
            color: Color.fromRGBO(106, 18, 114, 1),
          ),
          Shadow(
            offset: Offset(-1.5, 1.5),
            color: Color.fromRGBO(106, 18, 114, 1),
          ),
        ],
        color: Color.fromARGB(255, 53, 40, 56),
      ),
    );
  }
}
