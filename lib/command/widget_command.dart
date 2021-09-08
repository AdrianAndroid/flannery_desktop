import 'package:flannery_desktop/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommandWidget extends StatelessWidget {
  final execs = [
    _Command('External Tools: dumpsys-x21', 'scrcpy',
        ['--window-x 0 --window-y 0 -s 98badcb9']),
    _Command('External Tools: dumpsys-google', 'scrcpy',
        ['--window-x 0 --window-y 0 -s 8AWX10UKL']),
    // _Command('External Tools: scrcpy-top', ''),
    // _Command('External Tools: scrcpy-google', ''),
    // _Command('External Tools: scrcpy-x21', ''),
    // _Command('External Tools: gradle-tasks', ''),
    // _Command('External Tools: gradle-properties', ''),
    // _Command('External Tools: gradle-version', ''),
    // _Command('External Tools: gradle-clean', ''),
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
            runExec(command: c.command, params: c.params);
          },
          child: ListTile(
            title: Text(execs[index].title),
          ),
        );
      },
    );
    // return ListView(
    //
    //   children: [
    //     ListTile(
    //       title: Text('Map'),
    //     ),
    //   ],
    // );
  }
}

class _Command {
  String title;
  String command;
  List<String> params;

  _Command(this.title, this.command, this.params);
}
