import 'package:flutter/material.dart';

InputDecoration customSearch = InputDecoration(
  hintText: 'search takes',
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(50.0),
  ),
  fillColor: Colors.white,
  filled: true,
  prefixIcon: Icon(
    Icons.search,
    color: Colors.black,
  ),
);