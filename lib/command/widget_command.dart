import 'package:flannery_desktop/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommandWidget extends StatelessWidget {
  final execs = [
    _Command('scrcpy-x21', 'scrcpy --window-x 0 --window-y 0 -s 98badcb9'),
    _Command('scrcpy-google', 'scrcpy --window-x 0 --window-y 0 -s 8AWX10UKL'),
    // _Command('scrcpy-top', ''),
    // _Command('scrcpy-google', ''),
    // _Command('scrcpy-x21', ''),
    // _Command('gradle-tasks', ''),
    // _Command('gradle-properties', ''),
    // _Command('gradle-version', ''),
    // _Command('gradle-clean', ''),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: execs.length,
      separatorBuilder: (BuildContext context, int index) {
        return const Divider();
      },
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            logI(execs[index].title);
            _Command c = execs[index];
            runExec(c.command);
          },
          child: ListTile(
            title: Text(execs[index].title),
          ),
        );
      },
    );
  }
}

class _Command {
  String title;
  String command;

  _Command(this.title, this.command);
}
