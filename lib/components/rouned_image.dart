import 'package:flutter/material.dart';


Widget roundedImage(BorderRadius borderRadius,Widget image){

return ClipRRect(
  borderRadius: borderRadius,
  child: image,
);


}