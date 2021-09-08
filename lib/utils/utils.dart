import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

showToast(String txt) {
  Fluttertoast.showToast(
      msg: txt,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.black45,
      textColor: Colors.white,
      fontSize: 16.0);
}

logI(String txt, {String TAG = "TAG"}) {
  print('$TAG $txt');
}

runExec({String command = '', List<String> params = const []}) async {
  var result = await Process.start(command, params);
  print(result.stdout);
}
