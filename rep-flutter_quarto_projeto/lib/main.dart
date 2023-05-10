import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'HomeScreen.dart';
import 'Pagina1.dart';
import 'Pagina2.dart';
import 'Pagina3.dart';
import 'Pagina4.dart';
import 'Pagina5.dart';


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/home',
    builder: EasyLoading.init(),
    routes: {
      '/home': (_) => HomeScreen(),
      '/home/pg-1': (_) => Pagina1(),
      '/home/pg-2': (_) => Pagina2(),
      '/home/pg-3': (_) => Pagina3(),
      '/home/pg-4': (_) => Pagina4(),
      '/home/pg-5': (_) => Pagina5(),
    },
  ));
}