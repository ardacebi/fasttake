import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';


InputDecoration customSearch = InputDecoration(
  hintText: 'search takes',
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(50.0),
  ),
  
  filled: true,
  prefixIcon: Icon(
    SimpleLineIcons.magnifier,
  ),
);