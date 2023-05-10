import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Pagina3 extends StatefulWidget {
  const Pagina3({Key? key}) : super(key: key);

  @override
  State<Pagina3> createState() => _Pagina3State();
}

class _Pagina3State extends State<Pagina3> {
  @override
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
            child: Text('animated_text_kit'),
          ),
          Container(
            width: 250,
            child: DefaultTextStyle(
              style: const TextStyle(
                fontSize: 30.0,
                fontFamily: 'Bobbers',
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText('It is not enough to do your best,'),
                  TyperAnimatedText('you must know what to do,'),
                  TyperAnimatedText('and then do your best'),
                  TyperAnimatedText('- W.Edwards Deming'),
                ],
                onTap: () {
                  print("Tap Event");
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
