import 'package:flutter/material.dart';

InputDecoration customSearch = InputDecoration(
  hintText: 'Search takes',
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.0),
  ),
  fillColor: Colors.grey[200],
  filled: true,
  prefixIcon: Icon(
    Icons.search,
    color: Colors.black,
  ),
);