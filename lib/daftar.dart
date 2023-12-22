import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:note_app_mysql/config.dart';
import 'package:note_app_mysql/login.dart';
import 'package:http/http.dart' as http;

class daftar extends StatelessWidget{
  bool _showPassword = false;
  TextEditingController nama = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  Future _onSubmit() async {
            
              return await http.post(
                Uri.parse("http://$ip/pegawai/data_pegawai/register.php"),
                body: {
                  "nama": "${nama.text}",
                  "email": "${email.text}",
                  "pass": "${pass.text}",
                  "status":"Tidak Aktif"
                },
              ).then((value) {
                //print message after insert to database
                //you can improve this message with alert dialog
                var data = jsonDecode(value.body);
                print(data["message"]);
              });
            
          }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Center(
          child: Column(
            children: [
              Text('DAFTAR'),
              TextFormField(
                controller: nama,
                decoration: InputDecoration(
                  labelText: 'Nama',                  
                ),
              ),
              TextFormField(
                controller: email,
                decoration: InputDecoration(
                  labelText: 'Email',                  
                ),
              ),
              TextFormField(
                controller: pass,
                decoration: InputDecoration(
                  labelText: 'Password'
                ),
                obscureText: !_showPassword,
              ),
              SizedBox(height: 20,),
            ElevatedButton(onPressed: (){_onSubmit().then((value) => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){return login();})) ); }, child: Text('daftar')),
            ElevatedButton(onPressed: (){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){return login();}));}, child: Text('login'))
            ],
          ),
        ),
      ),
    );
  }

}