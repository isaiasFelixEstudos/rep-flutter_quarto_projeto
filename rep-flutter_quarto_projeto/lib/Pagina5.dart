import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';


class Pagina5 extends StatefulWidget {
  const Pagina5({Key? key}) : super(key: key);

  @override
  State<Pagina5> createState() => _Pagina5State();
}

class _Pagina5State extends State<Pagina5> {
  String resultado = '';
  TextEditingController _controladorEmail = TextEditingController();

  void Validate (String email){
    bool isvalid = EmailValidator.validate(email);
    setState(() {
      isvalid ? resultado = 'email valido' : resultado = 'email invalido';
    });
  }

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
            child: Text('Pagina 5'),
          ),
          TextField(
            controller: _controladorEmail,
            obscureText: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'email',
            ),
          ),
          ElevatedButton(onPressed: (){return Validate(_controladorEmail.text);},child: Text("Check"),
          ),
          Text(resultado),
        ],
      ),
    );
  }
}
