import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class Pagina4 extends StatefulWidget {
  const Pagina4({Key? key}) : super(key: key);

  @override
  State<Pagina4> createState() => _Pagina4State();
}

class _Pagina4State extends State<Pagina4> {
  Timer? _timer;
  late double _progress;

  @override
  void initState() {
    super.initState();
    EasyLoading.addStatusCallback((status) {
      print('EasyLoading Status $status');
      if (status == EasyLoadingStatus.dismiss) {
        _timer?.cancel();
      }
    });
    EasyLoading.showSuccess('Use in initState');
    // EasyLoading.removeCallbacks();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          PopupMenuButton(
              onSelected: (value) {
                if (value == '/home/pg-1') {
                  Navigator.of(context).pushNamed('/home/pg-1');
                } else if (value == '/home/pg-2') {
                  Navigator.of(context).pushNamed('/home/pg-2');
                } else if (value == '/home/pg-3') {
                  Navigator.of(context).pushNamed('/home/pg-3');
                } else if (value == '/home/pg-4') {
                  Navigator.of(context).pushNamed('/home/pg-4');
                } else if (value == '/home/pg-5') {
                  Navigator.of(context).pushNamed('/home/pg-5');
                } else if (value == '/home') {
                  Navigator.popUntil(context, ModalRoute.withName('/home'));
                }
              },
              itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Text('Home'),
                      value: '/home',
                    ),
                    PopupMenuItem(
                      child: Text('Pg-1'),
                      value: '/home/pg-1',
                    ),
                    PopupMenuItem(
                      child: Text('Pg-2'),
                      value: '/home/pg-2',
                    ),
                    PopupMenuItem(
                      child: Text('Pg-3'),
                      value: '/home/pg-3',
                    ),
                    PopupMenuItem(
                      child: Text('Pg-4'),
                      value: '/home/pg-4',
                    ),
                    PopupMenuItem(
                      child: Text('Pg-5'),
                      value: '/home/pg-5',
                    ),
                  ])
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Text('flutter_easyloadin'),
          ),
          TextButton(
            child: Text('showSuccess'),
            onPressed: () async {
              _timer?.cancel();
              await EasyLoading.showSuccess('Great Success!');
              print('EasyLoading showSuccess');
            },
          ),
        ],
      ),
    );
  }
}
