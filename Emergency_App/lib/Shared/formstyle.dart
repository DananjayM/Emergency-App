import 'package:flutter/material.dart';

final textInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
  filled: true,
  fillColor: Colors.white,
  errorBorder: OutlineInputBorder(
    borderRadius: const BorderRadius.all(const Radius.circular(27.5)),
    borderSide: BorderSide(color: Colors.red, width: 1.0),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderRadius: const BorderRadius.all(const Radius.circular(27.5)),
    borderSide: BorderSide(color: Colors.blue, width: 1.0),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: const BorderRadius.all(const Radius.circular(27.5)),
    borderSide: BorderSide(color: Colors.black, width: 1.0),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: const BorderRadius.all(const Radius.circular(27.5)),
    borderSide: BorderSide(color: Colors.blue, width: 1.0),
  ),
);
