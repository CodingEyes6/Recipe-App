import 'package:flutter/material.dart';
import '../../../constants/border_radius.dart';

BoxDecoration containerBackground({required Color color}) {

 var start = Alignment.topLeft;
 var finish = Alignment.bottomRight;

  return BoxDecoration(
    gradient: LinearGradient(
      colors: [
        color.withOpacity(0.7),
        color,
      ],
      begin: start,
      end: finish
    ),
    borderRadius: borderCircular10,
  );
}
