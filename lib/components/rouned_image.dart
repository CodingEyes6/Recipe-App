import 'package:flutter/material.dart';
import '../constants/border_radius.dart';

Widget roundedImage(BorderRadius borderRadius,Widget image){

return ClipRRect(
  borderRadius: borderRadius,
  child: image,
);


}