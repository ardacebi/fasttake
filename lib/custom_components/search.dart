import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_translate/flutter_translate.dart';


InputDecoration customSearch = InputDecoration(
  hintText: translate(('home.search_bar.label')),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(50.0),
  ),
  
  filled: true,
  prefixIcon: Icon(
    SimpleLineIcons.magnifier,
  ),
);