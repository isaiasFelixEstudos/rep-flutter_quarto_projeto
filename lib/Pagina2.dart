import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';


class Pagina2 extends StatefulWidget {
  const Pagina2({Key? key}) : super(key: key);

  @override
  State<Pagina2> createState() => _Pagina2State();
}

class _Pagina2State extends State<Pagina2> {
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
            child: Text('Photo_view'),
          ),
          Container(width: 200,height: 300,child: PhotoView(imageProvider: NetworkImage('https://picsum.photos/200/300')))
        ],
      ),
    );
  }
}
