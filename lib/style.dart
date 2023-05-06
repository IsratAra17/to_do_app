import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

InputDecoration AppInputDecoration(label)
{
  return InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
    border: OutlineInputBorder(),
labelText: label
  );
}
ButtonStyle MyBtnStyle()
{
  return ElevatedButton.styleFrom(
    padding: EdgeInsets.all(23),
    backgroundColor: Colors.green,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(4)
    )),

  );
}
