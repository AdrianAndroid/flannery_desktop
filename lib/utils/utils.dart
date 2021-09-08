import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:process_run/shell.dart';

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

// https://pub.dev/packages/process_run
runExec(String command) async {
  // Process process = await Process.start(command, params, runInShell: true);
  var shell = Shell();
  await shell.run('''
  $command
  ''');
  print('process end!');
}
